## shotgun-culling deer analysis
## Corey J. A. Bradshaw
## November 2022

library(performance)
library(sjPlot)

# source files
source("new_lmer_AIC_tables3.R")
source("r.squared.R")

AICc <- function(...) {
  models <- list(...)
  num.mod <- length(models)
  AICcs <- numeric(num.mod)
  ns <- numeric(num.mod)
  ks <- numeric(num.mod)
  AICc.vec <- rep(0,num.mod)
  for (i in 1:num.mod) {
    if (length(models[[i]]$df.residual) == 0) n <- models[[i]]$dims$N else n <- length(models[[i]]$residuals)
    if (length(models[[i]]$df.residual) == 0) k <- sum(models[[i]]$dims$ncol) else k <- (length(models[[i]]$coeff))+1
    AICcs[i] <- (-2*logLik(models[[i]])) + ((2*k*n)/(n-k-1))
    ns[i] <- n
    ks[i] <- k
    AICc.vec[i] <- AICcs[i]
  }
  return(AICc.vec)
}

## functions
delta.IC <- function(x) x - min(x) ## where x is a vector of an IC
weight.IC <- function(x) (exp(-0.5*x))/sum(exp(-0.5*x)) ## Where x is a vector of dIC
ch.dev <- function(x) ((( as.numeric(x$null.deviance) - as.numeric(x$deviance) )/ as.numeric(x$null.deviance))*100) ## % change in deviance, where x is glm object

linreg.ER <- function(x,y) { # where x and y are vectors of the same length; calls AICc, delta.AIC, weight.AIC functions
  fit.full <- lm(y ~ x); fit.null <- lm(y ~ 1)
  AIC.vec <- c(AICc(fit.full),AICc(fit.null))
  dAIC.vec <- delta.IC(AIC.vec); wAIC.vec <- weight.IC(dAIC.vec)
  ER <- wAIC.vec[1]/wAIC.vec[2]
  r.sq.adj <- as.numeric(summary(fit.full)[9])
  return(c(ER,r.sq.adj))
}

# import data
dat <- read.csv("data/aerialdat.csv")
head(dat)

plot(dat$shotg.rnds.fired, dat$time.st.dead.shotg, pch=19)
plot(dat$shotg.rnds.fired, dat$time.st.dead.shotg, pch=19)
plot(dat$shotg.rnds.fired, dat$purs2death, pch=19)
plot(dat$time.st.dead.shotg, dat$purs2death, pch=19)

# rescale
dat$frstLastShot <- scale(dat$time.st.dead.shotg, scale=T, center=F)
hist(dat$frstLastShot)
dat$grpSizeInt <- as.integer(dat$groupsize)
hist(dat$grpSizeInt)
dat$rnds <- scale(dat$shotg.rnds.fired, scale=T, center=F)
hist(dat$rnds)
dat$purs2dth <- scale(dat$purs2death, scale=T, center=F)
hist(dat$purs2dth)

# generalised linear models
# model set
m1 <- "purs2dth ~ frstLastShot + grpSizeInt + rnds"
m2 <- "purs2dth ~ frstLastShot + grpSizeInt"
m3 <- "purs2dth ~ frstLastShot + rnds"
m4 <- "purs2dth ~ grpSizeInt + rnds"
m5 <- "purs2dth ~ frstLastShot"
m6 <- "purs2dth ~ grpSizeInt"
m7 <- "purs2dth ~ rnds"
m8 <- "purs2dth ~ 1"

## model vector
mod.vec <- c(m1,m2,m3,m4,m5,m6,m7,m8)
length(mod.vec)
length(unique(mod.vec))

## define n.mod
n.mod <- length(mod.vec)

# model fitting and logLik output loop
Modnum <- length(mod.vec)
LL.vec <- SaveCount <- AICc.vec <- BIC.vec <- k.vec <- terml <- Rm <- Rc <- rep(0,Modnum)
mod.list <- summ.fit <- coeffs <- coeffs.se <- term.labs <- coeffs.st <- list()
mod.num <- seq(1,Modnum,1)

for(i in 1:Modnum) {
  fit <- glm(as.formula(mod.vec[i]),family=Gamma(link="log"), data=dat, na.action=na.omit)
  assign(paste("fit",i,sep=""), fit)
  mod.list[[i]] <- fit
  print(i)
}

sumtable <- aicW(mod.list, finite = TRUE, null.model = NULL, order = F)
row.names(sumtable) <- mod.vec
summary.table <- sumtable[order(sumtable[,7],decreasing=F),1:9]
summary.table

## saturated residual diagnostic
i <- 1
fit <- glm(as.formula(mod.vec[i]),family=Gamma(link="log"), data=dat, na.action=na.omit)

check_model(fit)
plot_model(fit, show.values=T, vline.color = "purple")

