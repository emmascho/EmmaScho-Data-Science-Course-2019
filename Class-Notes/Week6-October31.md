# Coding Class Notes: Week 6 - 31/10/19


#### Challenge Info:
Work for the challenge in chunks because it combines all the tutorials so far.
Uses LPI data

Every student has to pick a favourite species ASAP!
Great statistical model of poulations change for that specie sover time, using hierachal and Bayesian model (and optional: Baysian hierarchal model)
Main focus on statistics itself
ALL THE CODE in the data visualisation in the Coding Club Tutorial 
The point is to learn the most!
Each will get slightly different data so encouraged to talk and share with people!

---

- How does a model always consider random effect? Always categorical data (knows that year 2001 is different than 2000 but not numerical, doesn't know which one comes first)
- Spatial side vs time sides in random effect size equation
- Repeated meaasures experiment: when your expand the measurements
- Pseudo-replication: when you ignore random effects, solution to that is just adding appropriate random effects

---

#### Random Slopes & Random Intercepts

- Random intercepts: 3 parallel diagonal lines, fixed effects on x-axis and response variable on the y-axis.   Slope can move around the y axis but the slope can't change. Assumes no environmental variation eg. nutrient avilability variation. Usually minimum o f 3 levels of replication (?) and needs more than 5 levels ideally. but needs a strong amount of balance between number of replications between sites.
- Random slopes: can change slopes AND intercepts, fixed effects on x-axis and repsonse variable on the y-axis too. Sites can differ for eg. in vegetation height and how much there is. More mathematically complex model, doesn't always work.

In general include random effects, explain any simplifications and assumptions. Usually start with random slopes model and turning into random intercepts model. 

Develop statistical model before the actual data sampling, especially in defining replications. 
NB: levels of random effects are different from real numbers 

Package: ggeffects 
function: ggpredict

To get random effects, take fixed term and + the random variables 
In other model, it would be fixed term + 1

Some of the variation is removed using standardisation eg. only take data aged 3 and 6 years old.
Also important to think about direction of random effects.
