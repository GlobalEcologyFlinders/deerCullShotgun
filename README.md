# Deer Culling Analysis
<img align="right" src="www/deer icon.png" alt="insect damage icon" width="150" style="margin-top: 20px">

Generalised linear models testing variation in time from initiation of pursuit to death for feral fallow deer (<em>Dama dama</em>) in South Australia.

<br>
Prof <a href="https://globalecologyflinders.com/people/#DIRECTOR">Corey J. A. Bradshaw</a> <br>
<a href="http://globalecologyflinders.com" target="_blank">Global Ecology</a> | <em><a href="https://globalecologyflinders.com/partuyarta-ngadluku-wardli-kuu/" target="_blank">Partuyarta Ngadluku Wardli Kuu</a></em>, <a href="http://flinders.edu.au" target="_blank">Flinders University</a>, Adelaide, Australia <br>
October 2022 <br>
<a href=mailto:corey.bradshaw@flinders.edu.au>e-mail</a> <br>
<br>

Accompanies report:

Bradshaw, CJA, B Page, M Tarran, A Scanlon, K Fielder, S Bourne, M Stevens, P Schulz, R Matthews, C Findlay, W White, C Leehane, B Conibear, T Rowley. 2022. Aerial culling feral fallow deer with shotguns improves efficiency and welfare outcomes. Government of South Australia, Adelaide.

### Abstract
Feral deer abundance in Australia has increased from 200,000 in 2000 to around 2 million individuals by 2021. Their adverse ecological and economic impacts are now severe and, if left uncontrolled, their economic costs will exceed billions of dollars annually. Aerial culling can be an effective means for removing large numbers of feral vertebrates, including goats, pigs, and deer, from inaccessible areas. Landholders have been culling feral deer since they were first introduced, and the Government of South Australia has been doing helicopter-based culling (hereafter ‘aerial culling’) of feral deer for more than 15 years. Despite these programs, feral deer populations have continued to grow. Firearms used in aerial culling vary among jurisdictions and must comply with local requirements. In New South Wales, the Feral Animal Aerial Shooting Team used high-powered, centre-fire rifles to shoot feral deer in their aerial culling programs; the same methods were used in South Australia until 2021, whereas the New Zealand Government uses shotguns in aerial culling of feral deer. In Australia, it is common for shotguns to be used in the aerial culling of goats and pigs, but not deer. Because fallow deer (<em>Dama dama</em>) is a relatively small-bodied cervid (similar in size to goats and pigs), we posit that incorporating shotguns into the culling program targeting this species could increase efficiency and improve animal welfare outcomes. Specifically, we predicted that a program using a shotgun (compared to rifle-only programs) would increase the efficiency of the program, and improve welfare outcomes for target animals by reducing the time between the first shot and death, shortening pursuit times, and increasing the likelihood of multiple projectiles penetrating the thorax of target animals, leading to more fatal injuries of vital organs, thereby minimising time until death. This aerial-culling trial targeted fallow deer, which is the most abundant feral deer species in South Australia, was done on the Limestone Coast, South Australia from 1–7 October 2022. The aerial crew configuration included a primary shooter equipped with Benelli M2 semi-automatic shotgun with a red-dot scope and a custom choke at full extension. A secondary shooter was armed with a Wedgetail WT25 semiautomatic .308-calibre rifle equipped with a thermal scope and a variety of ammunition. In addition to the pilot, a thermographer was included in the crew to operate a high-resolution Vayu HD thermal-imaging camera and a high-powered laser to help the secondary shooter locate feral deer in forested areas. Each deer was shot at least twice, and the kill confirmed audibly by two crew members before moving to another target. Of the 611 deer culled during the program, we reviewed video and audio records of 104 to record the efficiency and humaneness of the program. We collected information on the number of shotgun and rifle rounds fired per animal, the time between first shot and confirmed death, and pursuit time. We also did field autopsies of 20 individuals to assess the severity and lethality of wounds inflicted with shotgun pellets. A total of 383 shotgun rounds and only 10 rifle rounds were used on 104 fallow deer assessed in this study. The mean ± standard error time between first shot and confirmed kill was 11.1 ± 0.7 seconds. Individual deer, or the first deer shot in a group, had the longest mean time between first shot and confirmed kill, but this interval decreased with subsequent individuals culled in the targeted group, and the maximum time recorded between first shot and a confirmed kill for any deer was 35.9 seconds. Mean pursuit time between detection and a confirmed kill was 49.5 ± 3.4 seconds. Pursuit time increased with subsequent deer controlled within a group, and maximum pursuit time for any individual was 159.0 seconds. All autopsied animals had received lethal wounds, with 100% receiving lung-penetrating damage and 70% also receiving heat-penetrating damage. We compared these results with published and unpublished data from other aerial-culling programs for feral deer in South Australia since 2009. Based on this comparison, we conclude that aerial culling for fallow deer using a shotgun is more efficient than exclusively using a semi-automatic .308-calibre rifle. The thermal-imaging equipment also increased the efficiency of the cull. Using a shotgun reduced the time between first shot and confirmed death and pursuit times relative to other programs in the same region. Reducing these intervals also minimised stress, and enhances animal welfare outcomes for culled deer. We also confirmed the suitability of shotguns for lethally culling fallow deer by observing that all targeted individuals had lethal wounds from shotgun pellets.


## <a href="https://github.com/cjabradshaw/deerCullShotgun/tree/main/scripts">Scripts</a>
- <code>deerCull.R</code>: main R code for analysis
- <code>new_lmer_AIC_tables3.R</code>: source code for information-theoretic algorithms
- <code>r.squared.R</code>: source code for calculating goodness-of-fit for linear models (including mixed-effects models)

## <a href="https://github.com/cjabradshaw/deerCullShotgun/tree/main/data">Data</a>
- <em>aerialdat.csv</em>: aerial culling data

## Required R packages
- <code>performance</code>
- <code>sjPlot</code>
