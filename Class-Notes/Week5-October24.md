## Coding Club Class Notes: Week 5 - 24/10/19


Feedback from challenge 1 just published!

NB: In the future don't provide feedback on the script directly. R project file is only on computer don't push it to Git or better don't have any.
Only 1 R Project per repository, don't nest them (inside) and only on computer!!

- Relative File Path: where your file is in Git, relative to base project/main repository

Feedback:
ggsave is really good because it allows reproducability so everyone can have the images
Also important to filter out data at the start so the dataset you are working with is more effcient & order of magnitude for operations is faster 

----
Main assessment part of the second challenge: 
- Figures
- Take a good luck at captions (though they are short on BBC)
- Has to be news worthy
- Try to replicate BCC stuff
- How well figures communicate your data
- Can include photos in the article too
- Only responsible for one graph, one message
Though can be photos and icons or text on the graph
- Has to be reproducible!
- On workflow: include this person needs to do x task, put it in a markdown file!
- Discuss most stuff on issues section instead of FB, this will be marked because it can be seen and credited
- Can also take pics or upload sketches to repositiory 
- Take into account color-blindness: avoid red and green,  go on websites to find color-blind friendly palettes
- Can do infogrpahics: check out ggplot2, especially ggplot2 extension packages (but just take ideas don't be too intense)
- Can do your size of the graphs adapted to instagram

Feedback will be provided on Monday. Tell how you want it to be eg. Issues tab etc

----
Video: p-hacking

Dropping data points to better your result and lower p-value so the results are significant, eg. adding more observations, increasing variables, choosing genders etc 
Doing replicate studies is undervalued even though they are crucial in pointing out published research that isn't valid

P-value is not always the best value
Probability at 0.05: called alpha value

Stats:
- Parametric statistics: looks more at standard error, p-value, using ANOVA ... Mostly taught because of convention, it's mathematically easier to get results 
- Bayesian statistics: uses prior knowledge,  all mathematically phrased, sampled from population, looks if it can be applied to real life, Bayesian is iterative meaning you have to repeat it over and over, can also have p-value in Bayesian stats

People don't use Bayesian stats because they weren't taught for undergrads, now with computer it's easier to use Bayesian stats and especially in ecology but still not being in taught enough!

Hierarchal model: looks at fixed effects and structure
Linear model: describes behaviour of continuous variable depending on factor

-----

Hypothesis:  testable relationship between variables 
Independent variable: explanatory variable
Dependent: aka response variable, outcome 

Hypothesis 1: H1
Null: Ho

Hypothesis 2: H2
null: H3 ??

Some distribution curves:

- Gauss
- T distribution
- Courbe de poisson
- Binomial 

Any data that is continuous should be more accurate than any categorical data
Need to think whether data is continuous or categorical etc -> to input in statistical model

R2: on model between 0 and 1 if close to 1 all values are fitted along the line of best fit but if it's closer to 0 then the values are quite far from the line of best fit

p-value: shouldn't be your mean piece of info

Most important number in linear model would be the slope (=effect size only in linear value) and the error 

DF: degrees of freedom, sample size - degrees of complexity (?)

NB: Hierarchal model aka mixed-effects model

Make an aribitrary decision regarding significant numbers: eg. 1 or 2 numbers

**Example of summary results**: 'The species richness of plantsin the Arctic has decreased over the past 10 years at a rate of 0.7 species per year (Figure 1, slope=-0.70 +/- 0.01, sample size = plots = 7, sites = 5)'

-> DISSERTATION! 

NB: can also put this in a table or figure caption or results section though tabel is the neatest way.




