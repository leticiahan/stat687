## ---- echo=FALSE---------------------------------------------------------
SMRD:::vinny()
library(SMRD)

## ---- eval=FALSE---------------------------------------------------------
#  advbond.model1 <-
#    SMRD:::get.alt.plan.values.from.two.points(
#      distribution = "Weibull",
#      relationship = "Inverse Power Rule",
#      time.units = "hours",
#      censor.time = 1000,
#      probs = c(.001,.9),
#      accelvar.units = "volts",
#      accelvar = c(110,150),
#      beta = 1.667)
#  
#  advbond.test.plan1 <-
#    SMRD:::get.alt.test.plan.direct(accel.variable.levels = c(130,140,150),
#                             number.of.units = c(100,100,100))
#  
#  plot(advbond.test.plan1,
#       ALT.plan.values = advbond.model1,
#       my.title = "",
#       use.conditions = 120)
#  
#  advbond.model2 <-
#    get.alt.plan.values.from.two.points(distribution = "Lognormal",	
#                                        relationship = "Arrhenius",
#                                        time.units = "days",
#                                        censor.time = 183,
#                                        probs = c(.001,.9),
#                                        accelvar = c(50,120),
#                                        sigma = .5)
#  
#  
#  advbond.test.plan2 <- SMRD:::get.alt.test.plan.direct(accel.variable.levels = c(80,100,120),
#                           number.of.units = c(100,100,100))
#  
#  plot(advbond.test.plan2,
#       ALT.plan.values = advbond.model2,
#       my.title = "",
#       use.condition = 50)

## ------------------------------------------------------------------------
AF(160,80,.8,"arrhenius")

AFplot(160,80,.8,"arrhenius")

AFplot(160,80,c(.7,.8,.9),"arrhenius")

AF(130,110,-2,"Inverse Power Rule")

AFplot(130,110,-2,"Inverse Power Rule")

