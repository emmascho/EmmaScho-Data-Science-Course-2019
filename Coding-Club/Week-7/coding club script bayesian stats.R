# Coding Club Tutorial: 06/11/19 Bayesian Stats 


# Load packages

library("MCMCglmm") # for meta-analysis
library("dplyr") # for data manipulation

migrationdata <- read.csv("migration_metadata.csv", header = T) # import dataset
View(migrationdata) # have a look at the dataset. Check out the Predictor variable. There are two, time and temperature.

head(migrationdata)

migrationdata %>%
  filter(Predictor == "year") -> migrationtime # this reduces the dataset to one predictor variable, time.

plot(migrationtime$Slope, I(1/migrationtime$SE)) # this makes the funnel plot of slope (rate of change in days/year) and precision (1/SE)

plot(migrationtime$Slope, I(1/migrationtime$SE), xlim = c(-2,2), ylim = c(0, 60))

# Runs random effect model with intercept as fixed effect only

randomtest <- MCMCglmm(Slope ~ 1, random = ~Species + Location + Study, data = migrationtime)
summary(randomtest)

# Fixed effects: We can accept that a fixed effect is significant 
# when the credible intervals do not span zero, this is because if the posterior distribution spans zero,
# we cannot be confident that it is not zero. 

# Estimating variance with random effects

par(mfrow = c(1,3))
hist(mcmc(randomtest$VCV)[,"Study"])
hist(mcmc(randomtest$VCV)[,"Location"])
hist(mcmc(randomtest$VCV)[,"Species"])

par(mfrow=c(1,1)) # Reset the plot panel back to single plots

# Checking for model convergence

plot(randomtest$Sol)

# Avoiding autocorrelation: key thing is that for the same number of iterations an autocorrelated sample contains less information than a correlated sample.

plot(randomtest$VCV)

# Prior: inform the model which shape we think the posterior distribution will take

# Parameter expanded priors
# NB: nitt= number of iterations 

a <- 1000
prior1 <- list(R = list(V = diag(1), nu = 0.002),
               G = list(G1 = list(V = diag(1), nu = 1, alpha.mu = 0, alpha.V = diag(1)*a),
                        G1 = list(V = diag(1), nu = 1, alpha.mu = 0, alpha.V = diag(1)*a),
                        G1 = list(V = diag(1), nu = 1, alpha.mu = 0, alpha.V = diag(1)*a)))
randomprior <- MCMCglmm(Slope ~ 1, random = ~Species + Location + Study, 
                        data = migrationtime, prior = prior1, nitt = 60000)

# NB: every time you run an MCMm model you'll get a different output


summary(randomprior)
plot(randomprior)

# Looking at sampling error: addign 4 random priors to the model

prior2 <- list(R = list(V = diag(1), nu = 0.002),
               G = list(G1 = list(V = diag(1), nu = 1, alpha.mu = 0, alpha.V = diag(1)*a),
                        G1 = list(V = diag(1), nu = 1, alpha.mu = 0, alpha.V = diag(1)*a),
                        G1 = list(V = diag(1), nu = 1, alpha.mu = 0, alpha.V = diag(1)*a),
                        G1 = list(V = diag(1), fix = 1)))

# Adds iterations of 60,000 & adding the four random priors
randomerror2 <- MCMCglmm(Slope ~ 1, random = ~Species + Location + Study + idh(SE):units, 
                         data = migrationtime, prior = prior2, nitt = 60000)

plot(randomerror2$VCV)

xsim <- simulate(randomerror2) # reruns 100 new models, based around the same variance/covariance structures but with simulated data.

plot(migrationtime$Slope, I(1/migrationtime$SE))
points(xsim, I(1/migrationtime$SE), col = "red") # here you can plot the data from both your simulated and real datasets and compare them


# checking whether the parameters fit the data: by making sure your max (or min) values fit inside a histogram

xsim <- simulate(randomerror3, 1000) # 1000 represents the number of simulations, and for some reason needs to be higher than the default to work in this case
hist(apply(xsim, 2, max), breaks = 30) # plot your simulation data

abline(v = max(migrationdata$Slope), col = "red") # check to see whether the max value of your real data falls within this histogram.




