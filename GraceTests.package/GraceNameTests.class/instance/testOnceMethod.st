tests
testOnceMethod
	| result def |
	result := self good: #Module parse: 'def inner = list.with(1, 2, 3)
once method size { inner.size }
'.
	self assert: result scope class equals: GraceModuleScope.
	self assert: (result scope defines: 'size').
	def := result items first.
	self assert: def isA: #DefDeclaration.
	def := result items second.
	self assert: def isA: #MethodDeclaration.
	self assert: (def isOnceMethod) description: 'size is a once method in parser tree'.
	self assert: (result scope lookupLocally: 'size' 
			ifAbsent: [ ^ self fail: 'size is not defined' ]) isOnceMethod 
		  description: 'size is not a once method in sym bol table'.