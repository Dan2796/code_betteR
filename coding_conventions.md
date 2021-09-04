# List of my personal coding conventions

These have developed over time and so earlier work (including some functions found in this repo) might not follow these exactly. 

Still, this serves as a guideline that I try to follow and update when I find reasons to do so.

The principles I am trying to adhere to with these coding conventions are as follows:

1. Code should be easily readable, but not necessarily all of the steps. 
2. Code should be quick to edit - I code in vim so having many separate files that are easy to navigate to but quite short is highly convenient
3. Code should be easily borrowed - storing functions in a function folder, for example, makes it easy to copy them across to other projects

# Conventions

## Naming 

### Case

Lower case with underscores is used for everything. I find it easier to read and to type quickly.

### Suffixes

Type suffixes are not always useful. For example, a repeatedly used dataframe does not need _df after it because its type will be obvious from usage. Indeed, frequently used dataframes can be named with short acronyms like pd (for polling data) to speed up typing.

Where there is the chance for ambiguity (e.g. sometimes in functions) a suffix can be used, and should come at the end of the word.

For example, a dataframe called neat_names_for_texreg_df, or a factor variable of class in wave 20 called class_w20_fct. 

## Functions

Where you are doing something more than once, or where some set of complex operations are needed, try to use a function. Sometimes the effort is not worth it, but often there are tasks that have a generalisable component and extracting this now saves time in other projects, as well as improving readability and minimising the chance for errors.

Try to keep functions short, and if there is a complex task then have can have a function that calls the other functions so that each stage can easily be isolated. 

Using tidyverse inside of functions is fine - the quo rules make enough sense that switching to base R just to avoid quotation issues is not really worth it. 

Use that :: thing for package dependent functions inside a function, though I often forget to do so, in order to maximise the flexibility of using the same function elsewhere.

### Storage

For very specific localised functions, these can be stored in a separate file in the same directory.

As a rule, it is better to store them in the independent "functions" folder. This is to make finding and copying the function to other projects easier.

### Naming

Use verbs where possible to indicate that it is a function and to make its effect as clear as possible, e.g. create_weighted_histogram.

If you can't think of a useful name, attach _fun at the end as a suffix to make clear that it is a suffix.

For very frequently used functions, such as some in this directory, short acronyms as names for quick use are fine. For example, ns to stand for name_search, since this is used frequently.

