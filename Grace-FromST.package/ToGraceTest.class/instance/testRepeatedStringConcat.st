tests
testRepeatedStringConcat
	self assertMethod: GraceObjectScope >> #lookupReused:ifAbsent: inGraceIs: 'method lookupReused (name) ifAbsent (aBlock) {
    // Return the variable corresponding to name, if it is defined in a scope that this
    // scope reuses.	If it is not defined, return the value of executing aBlock.
    if (areReusedNamesCompleted.not) then {
        error (("reused names of " ++ printString ++ " declared on " ++ node.range.lineRangePrintString ++ " have not been gathered"))
    }
    return reusedNames.at (name) ifAbsent {
        aBlock.value
    }
}
' 