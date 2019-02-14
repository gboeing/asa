# Advanced Spatial Analysis
# Module 04: Intro to pandas, Part II

### Overview:

Today we will continue the previous module's introduction of pandas functionality.

### Readings:

Chapters 7, 8, 10 of McKinney's *Python for Data Analysis*

Consult this [blog post](https://engineering.upside.com/a-beginners-guide-to-optimizing-pandas-code-for-speed-c09ef2c6a4d6) on optimizing pandas speed.

### Class Session:

Run through the Jupyter notebook.

### In-Class Exercise:

  1. Load the tracts_pop_age.csv and the tracts_white_income.csv datasets as DataFrames (do not sample or filter them).
  1. Merge them together on the geoid.
  1. Map a function to create a new dummy variable with value of 1 if median income is greater than \$50,000 and 0 otherwise.
  1. How many tracts have a non-hispanic white majority of the population?
  1. What is the average tract-level median income in Boston?
  1. Create a subset of the dataframe that only contains tracts in states with names that begin with the letter "N".
  1. Create a subset of this subset that only contains tracts with median income below \$30,000.
