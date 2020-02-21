# Test1 Package
##### This package provides a linear regressive analysis concerning the main factor affecting the weight of new bornes

# Installation

 ##### firts intall the R package "devtools" if not installed
> devtools::install_github('unimi-dse/19c75e7b')

# Dataset
##### the test1 dataset is made of 189 rows and 10 columns, regarding relevant charactreristics of mothers that has been use as indicators

# Usage
##### library(test1)

# Data
#### the function read_data() allows to have the dataset 'birthwt' from the package MASS
> read_data()

# Plot()
#### the function plot() creates a barplot representing the variables "age", "smoke", "race" and "lwt"
> plot()

# Plot2()
#### the function plot2() creates a bar chart rapresenting the mother'sweight in pounds at last menstrual period
> plot2()

# Regfunction
#### the function Regfunction() runs two multiple linear regression model: the firts one is a "total" multiple linear regression with all the parameters; the second one is a multiple linear regression with the parameters that are tested significat from the fist regression
> regfunction()

