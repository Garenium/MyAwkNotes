
# Chapter 1

Awk script's general syntax:

    pattern { action }

Awk command's general syntax:

    awk 'program' *input files*



## <mark>1. Fields
$0 is the same as same as the whole line. $1 refers to the first field/column, $2 refers to the second field etc.
```awk
{print $0}
```

## <mark>2. NF: **N**umber of **F**ields
prints the number of fields (columns), content of first field, content of last field
```awk
{print NF, $1, $NF}
```

## <mark>3. Operations with Numbers
You can make calculations with number data types (will return 0 if not a number data type)
```awk
{print $1, $2 * $3}
```

## <mark>4. NR: **N**umber of **R**ecords
NR counts each line in a file and prints the line number
While $0 takes each line and prints them out
```awk
{print NR, $0}
```
Outputs to:
``` 1 Beth 4.00 0
 2 Dan 3.75 0
 3 Kathy 4.00 10
       etc....
```

## <mark>5. Concatenate Strings 
You can also concatenate strings (spaces are adjusted)
```awk
{print "total pay for", $1, "is", $2 * $3}
```

## <mark>6. Format with Printf
You can format the output with printf() just like C.
```awk
{ printf("total pay for %s is $%.2f\n", $1, $2*$3) }
```

## <mark>7. Sorting
Can be done with the UNIX sort command.
See ``man sort`` to see its flags.
```awk
awk `{ printf("%6.2f %s\n", $2 * $3, $0)} emp.data | sort
```

## <mark>8. Selection
You can further patternize through different types of selections:

### 8.1 By Comparison (prints all lines where 2nd field's value is more or equal to 5):
```awk
    $2 >= 5
```

### 8.2 By Computation (prints all lines where an employer's pay is larger than 50):
```awk
    $2 * $3 > 50 { printf("$%.2f for %s\n", $2 * $3, $1) }
```

### 8.3 By Text Content (Can be done with equality operators or Regex)
#### Prints every line where 1st field has Susie.
```awk
    $1 == "Susie"
```
#### Looks for Susie everywhere in the file and prints the line if found.
```awk
    /Susie/
```
### 8.4 Logical Operators
Can be done with ``&&``, ``||`` and ``!(*pattern*)`` (just like other C-based languages)

This
```awk
    $2 >= 4 || $3 >= 20
```
Can be done in an opposite way:
```awk
    !($2 >= 4 || $3 >= 20)
```

#### This may print twice for each line
```awk
$2 >= 4
$3 >= 20
```

### 8.5 Data validation
Can be done applied with anything from above but with
a string concatenated

Something like:
```awk
NF != 3 { print $0, "number of fields is not equal to 3" }
```
to check if each line has 3 fields otherwise it will print the string.

Or
```awk
$2  < 3.35 { print $0, "rate is below minimum wage" } 
```

### 8.6 BEGIN and END

If you want labels, you can use BEGIN and END special patterns.

``print ""`` prints a blank line.

```awk
BEGIN { print "NAME     RATE    HOURS"; print "" } /*Prints the beginning labels*/

{ print }  /*Prints all lines in the file*/

END { print "END LABELS"  } /*Prints the ending labels*/
```

## <mark>9. Computing with AWK

### 9.1 Counting
If you want to count occuranes based on a pattern, you can have a variable to increment and print. Note that variables in awk are not declared.

```awk
    $3 > 15 { emp = emp + 1 }
    END { print emp, "employees worked more than 15 hours" }
```
If there is a field that is greater than the more 15, increment the variable emp by one then print it at the end.






