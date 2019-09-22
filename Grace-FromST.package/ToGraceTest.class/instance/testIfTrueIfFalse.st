tests
testIfTrueIfFalse
	| m |
	m := GraceResolvedVariable >> #reuseString.
	self assertMethod: m inGraceIs: 'method reuseString {
    // Answers a string, suitable for printing, that describes my reuse.
    return if (isReused) then {
         "reused "
    } else {
         "lexically-enclosing "
    }
}
' 