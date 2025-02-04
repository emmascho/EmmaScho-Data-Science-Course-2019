# Data Science: Week 4
## Data Manipulation
#### Thursday October 10

For providing feedback:
Either markdown doc, or feedback issue w/ person as collaborator or new file
You should invite someone to your repository: do this by going to your repository > R script > settings > collaborators & teams> add name

- Info about assessment: on read.me file of challenge

- Script works fine but ideally on mac, on line 23 there is a 'select' function that doesn't work on Windows (answer to that in issues)

- Good thing to do: Readme file on a repository that gives hyperlinks to repo structure and different folders, kind of like a content table
NB: Reminder to properly write commits in a straightforward/clear way

- Check issue folder to add code snippet for challenge 1
- Add license in challenge folder

CHECK MARKING CRITERIA

- Use a few dplyr function but it's ok if not and pipes might make the code more efficient but not mandatory

## Data Wrangling
What data wrangling does is that it clears out data and allows for betetr data visualisation 

Can now merge files to create one dataframe and also transferring to long frame for example
Can start a workflow (set of steps) with raw data to work on that separateley 
Good to project plan using a work flow before starting R script, expected for upcoming challenges

- How to make a markdown file: .md 
- How to make a R markdown file: .rmd
A R markdown file: is set up to speak to R well but is a newer version of markdown

Ways to add text to repo: 
- If you write in text editor to md: save it to desktop in rtf for example > open file explorer > change file name to .md > drag file to the repository folder on your computer only > Open R studio > commit pull push
NB: don't do it with bigger folder... 
- In RStudio go to new file > text file > will open a new window for text writing > will pop up in connected git in Rstudio

File extension of RStudio: .Rproj
File extension of document: .dx

#### Tidyverse: tidyverse is a package of packages 

Hadley Wickham is at the origin of the tidyverse (not base R)
Problem: it always expands and is ever-evolving (1 month later one code may be obsoletee)
Base R will always be universal but less efficient
You can still use tidyverse packages but should download an older one or put it in your repo alongside your code so people can read it no matter the time period

- Loop: bit of code that comes back to the start, it iterates but quite old
- Usually starts with 'for' : setting the range of the data eg. for x and/between y do z
Need to set up an end point as well 

On the other hand you could use a pipe:
- has an input and 'shoving your data' through a pipe to get output
Pipe name comes from René Magritte's 'ceci n'est pas une pipe' painting

NB: Usually don't have to set a working directory, if you're working from your repository from Git don't need to use setwd
Done with read function w/ filepath

Packages in tidyverse: tidyr, readr, dplyr, ggplot2, purr, stringr,...

Wide data format: can scroll through entire data (columns rows, ...) but not good for working w/ it only reading

##### Rule for tidy data: Each variable is a column, each observation is a row

For creating a pipe: 
 1. Create a dataframe
 2. Check that you don't wanna merge datas eg. two columns merged using **mutate function
 3. Output function: eg. length() to get the length ofthe list of unique species

NB: if you leave a function empty it will assume you're using the dataframe from before

NB: cf. challenge 1 good to check for empty observations and exclude them, do to that you need to use dplyr functions so either:
- drop_na()
- filtr( | ) : this means remove x OR y factors
- filtr ( & ) : this means remove BOTH x and y factors

- Gater function creates a long form

- If you put stuff as a factor (always has a rank associated with that) you will actually be able to use groupby function 

Reminder: != means not equal to

When you create a new column using mutate function it pop up at the end, at the very right of the table
If using stuff in base R instead of usual tidyverse, dplyr etc, use a .$ function or tidyverse function to wrap base R function in 

Don't have to change the visuals of figure but try to make it more efficient
-> for challenge 1 : Google to know about pipes, or do second coding club tutorial on pipes!!
