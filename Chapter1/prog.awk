
    #prints all lines where 2nd field's value is more or equal to 5
    $2 >= 5

    #prints all lines where an employer's pay is larger than 50
    $2 * $3 > 50 { printf("$%.2f for %s\n", $2 * $3, $1) }

    $1 == "Susie"  #Prints every line where 1st field has Susie.

    /Susie/ #Looks for Susie everywhere in the file and prints the line if found.

    $2 >= 4 || $3 >= 20 #Checks each 

    !($2 >= 4 || $3 >= 20)

    #This may print twice for each line
    $2 >= 4
    $3 >= 20

    NF != 3 { print $0, "number of fields is not equal to 3" }

    $2  < 3.35 { print $0, "rate is below minimum wage" } 

    BEGIN { print "NAME     RATE    HOURS"; print "" } #Prints the beginning labels
    { print }                                          #Prints all lines in the file
    END { print "END LABELS"  }                        #Prints the ending labels
