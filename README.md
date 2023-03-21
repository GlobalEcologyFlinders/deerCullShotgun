# Deer Culling Analysis
<img align="right" src="www/deer icon.png" alt="insect damage icon" width="150" style="margin-top: 20px">

Generalised linear models testing variation in time from initiation of pursuit to death for feral fallow deer (<em>Dama dama</em>) in South Australia.

<br>
Prof <a href="https://globalecologyflinders.com/people/#DIRECTOR">Corey J. A. Bradshaw</a> <br>
<a href="http://globalecologyflinders.com" target="_blank">Global Ecology</a> | <em><a href="https://globalecologyflinders.com/partuyarta-ngadluku-wardli-kuu/" target="_blank">Partuyarta Ngadluku Wardli Kuu</a></em>, <a href="http://flinders.edu.au" target="_blank">Flinders University</a>, Adelaide, Australia <br>
October 2022 <br>
<a href=mailto:corey.bradshaw@flinders.edu.au>e-mail</a> <br>
<br>

Accompanies preprint:

Bradshaw, CJA, A Doube, A Scanlon, B Page, M Tarran, K Fielder, L Andrews, S Bourne, M Stevens, P Schulz, T Kloeden, S Drewer, R Matthews, C Findlay, W White, C Leehane, B Conibear, J Doube, T Rowley. 2023. <a href="http://doi.org/10.3897/arphapreprints.e101198">Aerial culling feral fallow deer with shotguns improves efficiency and welfare outcomes</a>. <em>ARPHA Preprints</em> doi:10.3897/arphapreprints.e101198 (in review in <a href="https://neobiota.pensoft.net"><em>NeoBiota</em></a>)

report:

Bradshaw, CJA, B Page, M Tarran, A Scanlon, K Fielder, S Bourne, M Stevens, P Schulz, R Matthews, C Findlay, W White, C Leehane, B Conibear, T Rowley. 2022. <a href="https://www.pir.sa.gov.au/__data/assets/pdf_file/0004/431248/Aerial_culling_of_feral_fallow_deer_with_a_shotgun.pdf">Aerial culling feral fallow deer with shotguns improves efficiency and welfare outcomes</a>. Government of South Australia, Adelaide.

and blog post:

Bradshaw, CJA. 2023. <a href="https://conservationbytes.com/2023/02/24/better-codes-of-practice-for-control-of-feral-animals/">Better codes of practice for control of feral animals</a>. <em>ConservationBytes</em>


### Abstract
Invasive alien deer (hereafter, ‘feral deer’) are some of Australia’s worst emerging pest species. Recently, the Government of South Australia launched a four-year program to reduce the populations of feral fallow deer (<em>Dama dama</em>). The program will focus on coordinating landscape-scale aerial culls and seeks to deliver the most efficient and humane approach to aerial culling. We sourced data from a recent program trialling a new approach to aerial culling that incorporated advanced thermal technology and a second shooter with a shotgun to target fallow deer. We reviewed available video and audio records of 104 deer culled in the program to assess efficiency and welfare outcomes. We collected information on the number of shotgun and rifle rounds fired per animal, time between first shot with a shotgun and apparent death, and pursuit time. We completed field dissections of 20 individuals targeted in the program to assess the lethality of wounds inflicted with shotgun pellets. We also compared program costs and efficiency against published and unpublished data from ten other aerial-culling programs for feral deer in South Australia since 2009. A total of 383 shotgun rounds and 10 rifle rounds were used on 104 fallow deer in the focal program. We documented strong improvements to animal welfare for feral deer targeted with shotguns. The mean (± standard error) time between first shot and apparent death with a shotgun was 11.1 ± 0.7 seconds; mean pursuit time between detection and apparent death was 49.5 ± 3.4 seconds. Pursuit time increased with subsequent deer controlled within a group; the maximum pursuit time for any individual was 159.0 seconds. All autopsied animals had received lethal wounds from shotgun pellets, with 100% receiving lung-penetrating damage and 70% also receiving heart-penetrating damage. While a program that uses a shotgun and rifle combined with a second shooter and thermographer can cost more to mobilise, the outcomes measured in cost deer-1 made it the most cost-effective approach of any program we assessed. Control options that deliver improved animal welfare outcomes and increase efficiency are desirable for managing expanding populations of feral deer in South Australia and elsewhere.


## <a href="https://github.com/cjabradshaw/deerCullShotgun/tree/main/scripts">Scripts</a>
- <code>deerCull.R</code>: main R code for analysis
- <code>new_lmer_AIC_tables3.R</code>: source code for information-theoretic algorithms
- <code>r.squared.R</code>: source code for calculating goodness-of-fit for linear models (including mixed-effects models)

## <a href="https://github.com/cjabradshaw/deerCullShotgun/tree/main/data">Data</a>
- <em>aerialdat.csv</em>: aerial culling data

## Required R packages
- <code>performance</code>
- <code>sjPlot</code>

<a href="https://www.flinders.edu.au"><img align="bottom-left" src="www/Flinders_University_Logo_Horizontal_RGB_Master.png" alt="Flinders University logo" width="200" style="margin-top: 20px"></a>
<a href="https://globalecologyflinders.com"><img align="bottom-left" src="www/GEL Logo Kaurna New Transp.png" alt="GEL logo" width="200" style="margin-top: 20px"></a> <a href="https://pir.sa.gov.au/"><img align="bottom-left" src="www/pirsalogo.svg" alt="PIRSA" width="200" style="margin-top: 20px"></a>

