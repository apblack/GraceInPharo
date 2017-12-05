tests
testSimpleMethod
	| result def req |
	result := self good: #Module parse: 'method testObj { 3 }
testObj
'.
	self assert: result scope class equals: GraceModuleScope.
	self assert: (result scope defines: 'testObj').
	def := result items first.
	self assert: def isA: #MethodDeclaration.
	req := result items second.
	self assert: req isA: #SelfRequest