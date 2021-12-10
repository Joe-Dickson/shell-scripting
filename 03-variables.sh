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

## Use cases
# 1. If we want to use a value in multiple places, then go with variables. This brings advantage of changing the value in one place and it impacts in other places
## All the above things should be quoted , either single quotes or double quotes, but preferably double quotes

DATE=2021-12-08
echo Good morning, Welcome, Today date is ${DATE}

## 2. Usecase: If we need to get the data dynamically, we use variable to store that data and we refer
 # i. Command substitution - VAR=$(command)
 # ii. Arithmetic substitution VAR=$((expression))

DATE=$(date +%F)
echo Good morning, Welcome, Today is ${DATE}
ADD=$((2+3))
echo ADD = ${ADD}