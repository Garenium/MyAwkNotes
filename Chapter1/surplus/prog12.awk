#8. Selection

#By Comparison
$2 >= 5

#By Computation (with numbers) (prints the total pay for each employee
#that is more than $50
#$2 * $3 > 50 { printf("$%.2f for %s\n", $2 * $3, $1) }

#By Text Content (prints all lines where first field has Susie)
# $1 == "Susie" 
#You can also use regular expression (regex) to look for each line
#Here, it will for Susie in all fields in every line (everywhere in the file)
#/Susie/

#Combinations or patterns
#&&, || and !(pattern)

#For each line
#$2 >= 4 || $3 >= 20

#May print twice for each line
# $2 >= 4
# $3 >= 20

#Data Validations
#prints the line then the error
# NF != 3 { print $0, "number of fields is not equal to 3" } 
# $2 < 3.35 {print $0, "rate is below minimum wage" }
#etc.

# BEGIN and END
# If you want labels, you can do BEGIN and END special patterns
# print "" prints a blank line
# BEGIN { print "NAME     RATE    HOURS"; print "" }
# { print } 
# END { print "END LABELS"  }



