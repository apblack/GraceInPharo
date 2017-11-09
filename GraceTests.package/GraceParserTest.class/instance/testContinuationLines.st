tests-indentation
testContinuationLines
	self good: #Module parse: 'print( "this is"
    ++  "a print string"
    ++ "that spancs many"
        ++ "lines" )
print "now we are done"' 
	