#!/bin/bash

# variable -  we assign a name to a set of data is called a variable
# we assign a name to a set of commands is called functions

# Declare a function.
# method1
function sample () {
  echo one
  echo two
}

#Method2
sample1 () {
  echo one
  echo two
}

## Call the function
sample
sample1

# function just acts like a command, it is one of four types of commands.
# 1. Binaries
# 2. Shell Builtin commands
# 3. Alias
# 4. Functions

## Functions have it's own special variables
sample2() {
  echo First Argument = $1
  echo Number of Arguments = $#
  echo a in a function = ${a}
  b=200
}

a=100
sample2 123 xyz
echo Value of b = ${b}

## Variables with functions
# 1. You declare var in main program and you access it in function and vice versa

