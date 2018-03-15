instance initialization
fromNode: aNode
	name := aNode declaredName.
	parameters := aNode parameters collect: [ :each | GraceAbstractType fromTypeNode: each type ].
	result := GraceAbstractType fromTypeNode: aNode returnType