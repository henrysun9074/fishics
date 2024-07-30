# library(readxl)
# library(dplyr)
library(vegan)
# spe <- read.csv('/Users/henrysun_1/Desktop/Duke/2024-2025/Summer 2024/fishics/models/Q2B/RDA/edna_csv2.csv') 
spe <- read.csv('/Users/henrysun_1/Desktop/Duke/2024-2025/Summer 2024/fishics/models/Q2B/RDA/aug_edna.csv')
# env <- read.csv('/Users/henrysun_1/Desktop/Duke/2024-2025/Summer 2024/fishics/models/Q2B/RDA/eDNAENV.csv')
env <- read.csv('/Users/henrysun_1/Desktop/Duke/2024-2025/Summer 2024/fishics/models/Q2B/RDA/augeDNAenv.csv')

# Exploring eDNA data
names(spe)
dim(spe)
summary(spe)
# Count number of species frequencies in each abundance class
sum(spe == 0)
# Calculate proportion of zeros in the dataset
sum(spe == 0)/(nrow(spe) * ncol(spe))
spe.hel <- decostand(spe, method = "hellinger")

# Exploring env data
names(env)
dim(env)
heatmap(abs(cor(env)), 
        # Compute pearson correlation (note they are absolute values)
        col = rev(heat.colors(6)), 
        Colv = NA, Rowv = NA)
legend("topright", 
       title = "Absolute Pearson R",
       legend =  round(seq(0,1, length.out = 6),1),
       y.intersp = 0.7, bty = "n",
       fill = rev(heat.colors(6)))
## highest correlations: bottom and surface temp, salt stratification and surface salinity

env.z <- decostand(env, method = "standardize")
# Variables are now centered around a mean of 0
round(apply(env.z, 2, mean), 1)


# RDA
env.z <- subset(env.z) 
spe.rda <- rda(spe.hel ~ ., data = env.z)
summary(spe.rda)

# 37% of variance in eDNA is explained by our 6 environmental variables
# 63% isn't!!!


anova.cca(spe.rda, step = 1000)
# Statistically significant

# Type 1 scaling
ordiplot(spe.rda, scaling = 1, type = "text")
# Type 2 scaling
ordiplot(spe.rda, scaling = 2, type = "text")


## TODO: remake CSV files with station #s for easier visualization! 
# can determine from plots what stations cluster together => community structure

## TODO: select just on February and August data! make new CSV files.


