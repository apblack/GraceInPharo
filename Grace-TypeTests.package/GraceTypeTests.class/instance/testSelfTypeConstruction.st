tests
testSelfTypeConstruction
	| module decl type mt |
	module := self good: #Module parse: 'type ToyBoolean = interface {
    ifTrue(_:Procedure0)ifFalse(_:Procedure0) -> Done
    not -> Self
}
'.
	decl := module items first.
	self assert: decl isA: #TypeDeclaration.
	type := GraceBuildType from: decl.
	self assert: (type isKindOf: GraceInterfaceType).
	self assert: type methodNames sorted equals: #('ifTrue(_)ifFalse(_)' 'not').
	mt := type methodNamed: 'not' ifAbsent: [ 
		self fail: 'can''t find method not' ].
	self assert: mt parameters size equals: 0.
	self assert: mt result typeName equals: 'Self'
	