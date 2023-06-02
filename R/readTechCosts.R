readTechCosts <- function(subtype = "PowerAndHeat") {

library(dplyr)
library(quitte)

# categories and subcategories:
# demand / supply
# sectors: industry, transport, buildings, power&heat, etc.
# categories specific to each sector

x <- read.csv("power_and_heat_energyf.csv")
names(x) <- c("tech", "value", "year", "variable", "unit")
x <- filter(x, x[["tech"]] != "Refurbishment of existing nuclear reactors")
x[["value"]] <- as.numeric(x[["value"]])
x <- as.quitte(x)
return(as.magpie(x))
}