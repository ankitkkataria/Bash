#!/bin/bash
MYVAR="ANKIT" # No spaces are allowed while assigning variables.
echo "My name is ${MYVAR}"
SERVER_NAME=$(hostname) # This way you can even go ahead and execute commands inside the shell script code and assign those to variables. Another older way of doing the same thing is `hostname`
echo "My computers hostname is ${SERVER_NAME}"

# This is how if else statements work in shellscript code.
if [ -e sample.sh ]; then # -e here denotes exists in current directory.
echo "sample.sh file exists"
else 
echo "sample.sh doesn't exist"
fi

stringOne=""

if [ -z "${stringOne}" ]; then # There must be a space between the condition and the brackets []
    echo "stringOne is empty"
fi

stringTwo="Ankit"

if [[ -n "${stringTwo}" ]]; then # -n checks if the string is not empty it returns true.
    echo "stringTwo is not empty"
fi

stringThree=""

if [[ "${stringOne}" = "${stringThree}" ]]; then
    echo "stringOne and stringThree are equal"
fi

if [[ "${stringOne}" != "${stringTwo}" ]]; then
    echo "stringOne and stringTwo are not equal"
fi

for COLOR in red green blue ; do
    echo "COLOR: $COLOR"
done

AllPicsInThisFolder=$(ls *jpg)
Date=$(date +%F)

for Picture in ${AllPicsInThisFolder}; do # Whenever you use a variable use ${} around it.
    echo "Renaming ${Picture} to ${Date}-${Picture}"
    mv ${Picture} ${Date}-${Picture}
done

read -p "Enter your name :- " NameVariable
echo "Your name is $NameVariable"

# If you want to read an input from the user you just have to do this.
# read -p 'Enter your name' NameVariable
# echo 'Your name is ${NameVariable}'


# Each command when executed returns a exit status code.
# $? will be used to catch the exit status code of the last executed command.
# If the command was successfully executed then it would return 0 as it's status code.
# If not successfully executed it will return something else than 0.
# You can also return something from your script file itself using the exit <number> command which you can even wait for in other scripts.

# By default all variables in shell script are global.
# You must declare variable before using it.

# Let's say there is a variable in a function we already know it's a global variable.
# But let's say you want to access this variable outside the function.
# That's allowed.
# But only after you've called the function atleast once.

# Local variables are also there in shell script but they can only be used inside functions.
# Syntax :- local Var_Name=Value
# Obviously these local variables can only be used within the function that they are defined in.
# Usually it's considered to be a best practice to declare all varaibles in your function as local variables but not everyone follows this but it's fine as long as you don't repeat variable names.

# If no exit status is sent from your shell script file then the last command that was executed at the end of the file it will pick that exit status and send it.
# Similarly return statements are also there in functions in shell script that can return a status and the same thing will also happen here if you don't return anything explicitly it will return the last executed instruction's status code.

# Shell script order in which you should do things.
# 1.Shebang Interpretor (In first line.)
# 2.Comments about what this script actually does and the author also if you want to.
# 3.Global variables
# 4.Functions (Use local variables)
# 5.Main script contents
# 6.Exit with an exit status  (exit <STATUS> at various exit points.)

# Wildcards
# A character or string used for pattern matching.
# Globbing expands the wildcard pattern into a list of files and/or directories. (paths)
# Wildcards can be used with most commands do something with files. (like ls, cp, mv and rm etc.)
# We have a few wildcards two of them are * and ?
# * - matches zero or more characters.
# *.txt
# a*
# a*.txt
# - matches exactly one character.
# ?.txt
# a?.txt

# Another wildcard is [] this is called a character class. It Matches any of the characters included between the brackets. Matches exactly one character.
# [] A character class.
# [aeiou] :- If you do ls [aeiou] it will return the files having name a,e,i,o or u.
# ls ca[nt]* :- will return all the files that start with ca then third character can be n or t and then end with anything.
# Your output of the above command may look like :-
# can.txt
# cat.png
# candy.jpeg
# catch

# Something else as well.
# [!] - Matches any of the characters NOT included between the brackets. Matches exactly one character. 
# ls [!aeiou]* :- This will returns all the files starting with a consonent.
# Your output of the above command may look like :-
# baseball.txt
# cricket.exe

# Use two characters separated by a hyphen to create a range in a character class.
# [a-g]* :- Matches all files that start with a, b, c, d, e, f, or g.
# [3-6]* Matches all files that start with 3, 4, 5 or 6.

# These down below help you in matching the corresponding characters.
# [[:alpha:]]
# [[:alnum:]]
# [[:lower:]]
# [[:space:]]
# [[:upper:]]

# Matching Wildcard patterns
# \ escape character. Use if you want to match a wildcard character.
# Match all files that end with a question mark: ls *\?
# The output of the above command may look like :-
# filename?
# filename2?

# path/to/interprtor
# cd /var/www
# cp *.html /var/www—just—html 
# The above commands if written in a shell script file will cd into a directory and then copy and paste all the html files in that directory.

INDEX=0

while [[ INDEX -lt 6 ]]; do
    echo "Creating Project-${INDEX} folder"
    mkdir Project-${INDEX}
    ((INDEX++))
done
