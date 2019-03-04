tests
testMethodWithParameters
	| m grace |
	m := GraceAbstractVariable >> #attributeScope:.
	grace := String streamContents: [ :s | | v |
		v := ToGraceVisitor new outStream: s.
		m ast acceptVisitor: v.
	].
	self assert: grace equals: 'method attributeScope (aScope) {
    attributeScope := aScope
}
' 