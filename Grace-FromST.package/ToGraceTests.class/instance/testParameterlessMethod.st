tests
testParameterlessMethod
	| m grace |
	m := GraceAbstractVariable >> #declaredName.
	grace := String streamContents: [ :s | | v |
		v := ToGraceVisitor new outStream: s.
		m ast acceptVisitor: v.
	].
	self assert: grace equals: 'method declaredName {
    return name
}
' 