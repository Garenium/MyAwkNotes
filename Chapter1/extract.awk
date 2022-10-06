#From Alvin Alexander: https://alvinalexander.com/source-code/awk-script-extract-source-code-blocks-markdown-files/
BEGIN {
    # awk doesn’t have true/false variables, so
    # create our own, and initialize our variable.
    true = 1
    false = 0
    printLine = false
}

{
    # look for ```scala to start a block and ``` to stop a block.
    # `[:space:]*` that is used below means “zero or more spaces”.
    if ($0 ~ /^```awk/) {
        printLine = true
        print ""
    } else if ($0 ~ /^```[:space:]*$/) {
        # if printLine was true, we were in a ```scala block,
        # so print the end matter, then make printLine false
        # so printing will stop
        if (printLine == true) {
            #print "```"
        }
        printLine = false
    }
 
    if ($0 != "```awk" && printLine) print $0
}
