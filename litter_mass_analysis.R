library(esquisse)
library(neonUtilities)
library(ggplot2)

dat_ltr <- loadByProduct(dpID = 'DP1.10033.001', site = 'HARV', startdate = '2019-01-01', enddate = '2019-12-31', check.size = FALSE)

dat_mass <- dat_ltr$ltr_massdata

p1 <- ggplot(data = dat_mass, aes(x = collectDate, y = dryMass, color = functionalGroup)) + geom_point()

p1