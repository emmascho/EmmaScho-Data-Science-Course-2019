# Coding Class Notes: Week 9 - 14-11-19

### General info:
Go to the coding club tutorials and to class bc v. important for challenge 4

Coding club tutorial "efficient data synthesis" useful for challenge 4 
Next week will be w/ Java but with a starter script, more focus on the thinking: will be an in-class challenge in group on Java.
Can Google, can communicate among groups etc

Tutorial challenge & Repo challenge due on the 29th November but will be an attempt to move later
This will be sumbitted as a PDF through Turnitin 

Make a nice front-end telling what to look at, wiht nice readme mark down (comments and links to outputs of coding club tutorial)
Make it reflect your participation on your course.
Make an issue tab on tutorial type so don't have the same ones. SHould be completable in 2hours, can test by asking someone (?). 


**Last Tutorial is worth 40%!!**

Last week is a trip to Bayes, meeting with head of space agency thingy -> recruiting data scientists (sign up will be sent)



### Challenge 3: Feedback

Could have started with the report early on without most of the data. Put the research question separately. 
Figure labels! Need to put authorisation of source for photo (eg. copyright from NatGeo), credit + permission.

Include sample size in the methods section

pop~year+duration+(year|id) -> means that year is a fixed effect and id is random, so id will vary potentially w/ year (?)
NB: Shorter time series allow for more perceived population change, detects change instead of smoothing trend line

Having year as random effect: 
sometimes with also populations spanning continents you shouldn't focus on year as a source of variation either. Doesn't allow each population to have their own account for variation.

**When you put & focus on specific random effects, you're removing variaiton from other variables (which may have been important for testing) !**

Can run a two stage model: run some statistical models at lower level of hierarchy, 
run 2nd model with implementig effect size. Useful when data structure is really complex (not the most parcimonious) 

Justfy which variable was chosen. What the ideal model would've included and what you used in the end. Always include both models in the text but for example in the report and the rest in the appendix.  

Pre-registration was important in getting thinking before the modelling. Helps to prevent p-hacking if you upload it  to an online database.


NB: DOI= Digital object identifier (can also have it for datasets or repos called Zenodo?)

Check metadata to see if you have count data or different types of counts & sampling (meaning using scalepop would have been useful). 

If you want to remove scaling of effect size: effect size had to have the full range and account for it.

In order to merge two plots to compare, can just add the two codes within the same ggplot function.
But for tidy graphs just put them next to another and have the same scaling.
Look at slope and error around the slopes in general to compare.

Poisson distribution would appear exponential (unlogged data), it is non-linear. 
Logging your data and non-logging using a poisson distribution would look the same, slightly exponential. 

Can use tidystan to make a nice reproducable table





