#!/bin/bash

## If we assign a name to a set of data, it's called a variable

# Syntax: VARNAME=DATA
a=100     # Number
b=apple   # String
c=true    #Boolen

#Shell does not have any data type be default

# Access the variables. Variable will be accessed in two ways
# 1. $VARNAME , $ preceding to the variable name , Ex: $a to a variable
# 2. $(VARNAME), $ preceding along with variable bounded in flower braces, Ex: ${a}

## Best practice is using flower braces.
echo a = $a
echo a in currency = ${a}USD


