tests-Types
testInterfaceWithNestedTypes
	| iLit |
	iLit := self good: #Type as: #InterfaceLiteral parse: 
		'interface {
        type T = Number
        foo
        bar -> String
        type U = String
}'.
	self assert: (iLit methods size) equals: 2.
	self assert: (iLit typeDecls size) equals: 2.
	iLit methods do: [ :each | self assert: each isA: #Signature ].
	iLit typeDecls do: [ :each | self assert: each isA: #TypeDeclaration ]
	