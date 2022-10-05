#Awk's general syntax
#pattern{ action }
#
#Awk's command general syntax
#awk 'program' files 

#1.
#$0 is the same as same as the whole line. $1 refers to the first field/column, 
#$2 refers to the second column etc.
#{print $0}

#2.
#prints the number of fields (columns), content of first field, content of last field
#{print NF, $1, $NF}

#3.
#You can make calculations with number data types (will return 0 
#if not a number data type)
#{print $1, $2 * $3}

#4.
#Print line numbers
#NR counts each line in a file and prints the number line 
#$0 takes each line and prints them out
#{print NR, $0}
# 1 Beth 4.00 0
# 2 Dan 3.75 0
# 3 Kathy 4.00 10
#...

#5.
#You can also concatenate strings (spaces are adjusted)
# {print "total pay for", $1, "is", $2 * $3}

#6.
# You can format the output with printf() just like C
# { printf("total pay for %s is $%.2f\n", $1, $2 * $3) }
# { printf("%-8s $%6.2f\n", $1, $2 * $3) }

#7.Sorting
#You want to print their increase pay in increasing order with 
#the UNIX command sort
#{ printf("%6.2f %s\n", $2 * $3, $0) } 



