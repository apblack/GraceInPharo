tests
testIfTrueIfFalse
	| m grace |
	m := GraceResolvedVariable >> #reuseString.
	grace := String streamContents: [ :s | | v |
		v := ToGraceVisitor new outStream: s.
		m ast acceptVisitor: v.
	].
	self assert: grace equals: 'method reuseString {
    // Answers a string, suitable for printing, that describes my reuse.
    return if (isReused) then {
         "reused "
    } else {
         "lexically-enclosing "
    }
}
' 