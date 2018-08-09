tests
testEqualityMethod
	| m grace |
	m := GraceScope >> #=.
	grace := String streamContents: [ :s | | v |
		v := ToGraceVisitor new outStream: s.
		m ast acceptVisitor: v.
	].
	self assert: grace equals: 'method == (other) {
    if ((class == other.class).not) then {
        return false
    }
    return ((localNames.keys.sort == other.localNames.keys.sort) && {
        (reusedNames.keys.sort == other.reusedNames.keys.sort)
    })
}
' 