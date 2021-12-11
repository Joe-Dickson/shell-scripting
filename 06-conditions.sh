#!/bin/bash

## Conditions are teo types

# 1. If command (mostly used)
# 2. case command (rarely used)

# IF COMMAND
# 1. Simple if

#Syntax:
# if [ expression ]; then
# commands
#fi

# If expression is true then commands will be executed

# 2. If else

# Syntax:

#if [ expression ]; then
#  COMMANDS-1
#else
#  COMMANDS-2
#f1

## if expression is true then commands-1 will be executed, if not commands-2 will be executed
# 3. Else if


# Syntax:

#if [ expression-1 ]; then
#  commands-1
#elif [expression-2 ]; then
#  commands-2
#else
#  commands-else
#fi

# if expression-1 is true then commands-1 will be executed, if not expression-2 is true then commands-2 will be executed. If both expressions are false then commands-else will be executed

# Expressions
# 1. Strings
  # Operators : = , ==, !#, -z
  # Ex: [ abc == ABC ]
# 2. Numbers
  # Operators : -eq, -ne, -gt, -ge, -lt, -le
  # ex: [ 1 -eq 0 ]
# 3. Files
  #Operators : -e to check if the file exist or not.
      # (so many are there, can be referred from documentation when needed)


read -p 'Enter your age:' age
if [ -z "$age"]; then
  echo Input Missing
  exit
fi
if [ "${age}" -lt 18 ]; then
  echo You are a Minor
elif [ "${age}" -gt 60 ]; then
  echo You are a senior citizen
else
  echo You are Major
fi

## Note: When you use variables in expressions of if statement, Always double quote them