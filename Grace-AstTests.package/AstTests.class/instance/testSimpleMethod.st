tests
testSimpleMethod
	| result def req |
	result := self good: #Module parse: 'method testObj { 3 }
testObj
'.
	self assert: result scope class equals: GraceModuleScope.
	self assert: (result scope defines: 'testObj').
	def := result items first.
	self assert: def isA: #MethodDecl.
	req := result items second.
	self assert: req isA: #Request.
	self assert: req receiver isA: #Oneself