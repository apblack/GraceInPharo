tests
testTypeConstruction
	| module decl type mt |
	module := self good: #Module parse: 'type ToyBoolean = interface {
    ifTrue(_:Procedure0)ifFalse(_:Procedure0) -> Done 
}
'.
	decl := module items first.
	self assert: decl isA: #TypeDeclaration.
	type := GraceBuildType from: decl.
	self assert: type methodNames equals: #('ifTrue(_)ifFalse(_)').
	mt := type methodNamed: 'ifTrue(_)ifFalse(_)' ifAbsent: [ 
		self fail: 'can''t find method ifTrue(_)ifFalse(_)' ].
	self assert: mt parameters size equals: 2.
	self assert: mt parameters first typeName equals: 'Procedure0'.
	self assert: mt parameters second typeName equals: 'Procedure0'.
	self assert: mt result typeName equals: 'Done'
	