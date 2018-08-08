as yet unclassified
testEqualityMethod
	| m grace |
	m := GraceScope >> #=.
	grace := String streamContents: [ :s | | v |
		v := ToGraceVisitor new outStream: s.
		m ast acceptVisitor: v.
	].
	self assert: grace equals: 'method == (other) {
    (class == other.class).ifFalse {
        return false
    }
    return (localNames.keys.sort == other.localNames.keys.sort).and {
        (reusedNames.keys.sort == other.reusedNames.keys.sort)
    }
}
' 