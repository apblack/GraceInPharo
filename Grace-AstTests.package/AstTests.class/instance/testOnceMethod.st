tests
testOnceMethod
	| result defInner methSize |
	result := self good: #Module parse: 'def inner = list.with(1, 2, 3)
once method size { inner.size }
'.
	self assert: result scope class equals: GraceModuleScope.
	self assert: (result scope defines: 'size').
	defInner := result items first.
	self assert: defInner isA: #VariableDecl.
	methSize := result items second.
	self assert: methSize isA: #MethodDecl.
	self assert: (methSize isOnceMethod) description: 'size is a once method in parser tree'.
	self assert: (result scope lookupLocally: 'size' 
			ifAbsent: [ ^ self fail: 'size is not defined' ]) isOnceMethod 
		  description: 'size is not a once method in symbol table'.