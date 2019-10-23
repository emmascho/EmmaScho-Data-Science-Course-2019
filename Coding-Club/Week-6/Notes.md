# Coding Club Tutorial: 23/10/19

### Intro to model design

Example: Pumpkin growers in Scotland
We want to model using such known parameters: fields, Scotland, fertilizer use, pumking size 
So question: Is there a relationship between pumpkin size and fertilizer use?

NB: ANOVA and linear models are the same 

Directional hypothesis: not recommended but eg. this pumpkin will be different than standard size 
Non-directional hypothesis: not recommended there is no thinking behind it 

Pumpkin Size ~ Fertlizer + error (fields/farms + years)

y ~ x

However this is missing farms in the model, as wellas time and spatial arrangement 
Fixed effects: eg. fertilizer (exlanatory variable)

Whatever is in errors: has to be treated as categorical variable

PS ~ Time + fields/farms + years 

If some variable has an effect but not know exactly why: make it random effect
