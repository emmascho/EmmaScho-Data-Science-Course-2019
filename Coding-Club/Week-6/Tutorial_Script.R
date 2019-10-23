install.packages("lme4")
install.packages("sjPlot")
install.packages("ggeffects")
install.packages("MCMCglmm")
install.packages("MCMvis")
install.packages("brms")
install.packages("stargazer")


# Load libraries ----
library(dplyr)  # for data manipulation
library(ggplot2)  # for data visualisation
library(lme4)  # for models
library(sjPlot)  # to visualise model outputs
library(ggeffects)  # to visualise model predictions
library(MCMCglmm)  # for models
library(MCMCvis)  # to visualise model outputs
library(brms)  # for models
library(stargazer)  # for tables of model outputs

# Load data ----
# Remember to set your working directory to the folder
# where you saved the workshop files
toolik_plants <- read.csv("toolik_plants.csv")

# Inspect data
head(toolik_plants)


str(toolik_plants)
toolik_plants$Plot <- as.factor(as.character(toolik_plants$Plot))

# Get the unique site names
unique(toolik_plants$Site)
length(unique(toolik_plants$Site))

# Group the dataframe by Site to see the number of blocks per site
toolik_plants %>% group_by(Site) %>%
  summarise(block.n = length(unique(Block)))

toolik_plants %>% group_by(Block) %>%
  summarise(plot.n = length(unique(Plot)))

unique(toolik_plants$Year)
length(unique(toolik_plants$Species))
unique(toolik_plants$Species)

# We use ! to say that we want to exclude
# all records that meet the criteria

# We use %in% as a shortcut - we are filtering by many criteria
# but they all refer to the same column: Species
toolik_plants <- toolik_plants %>%
  filter(!Species %in% c("Woody cover", "Tube",
                         "Hole", "Vole trail",
                         "removed", "vole turds",
                         "Mushrooms", "Water",
                         "Caribou poop", "Rocks",
                         "mushroom", "caribou poop",
                         "animal litter", "vole poop",
                         "Vole poop", "Unk?"))

# A much longer way to achieve the same purpose is:
# toolik_plants <- toolik_plants %>%
#  filter(Species != "Woody cover" &
#	       Species != "Tube" &
#         Species != "Hole"&
#				 Species != "Vole trail"....))
# But you can see how that involves unnecessary repetition.

length(unique(toolik_plants$Species))

# Calculate species richness & how many species were recorded in each plot in each survey year.
toolik_plants <- toolik_plants %>%
  group_by(Year, Site, Block, Plot) %>%
  mutate(Richness = length(unique(Species)))

(hist <- ggplot(toolik_plants, aes(x = Richness)) +
    geom_histogram() +
    theme_classic())

(hist2 <- ggplot(toolik_plants, aes(x = Relative.Cover)) +
    geom_histogram() +
    theme_classic())

plant_m <- lm(Richness ~ I(Year-2007), data = toolik_plants)
summary(plant_m)

plot(plant_m)

plant_m_plot <- lmer(Richness ~ I(Year-2007) + (1|Site), data = toolik_plants)
summary(plant_m_plot)
plot(plant_m_plot)  # Checking assumptions

plant_m_plot2 <- lmer(Richness ~ I(Year-2007) + (1|Site/Block), data = toolik_plants)
summary(plant_m_plot2)

plant_m_plot3 <- lmer(Richness ~ I(Year-2007) + (1|Site/Block/Plot), data = toolik_plants)
summary(plant_m_plot3)
