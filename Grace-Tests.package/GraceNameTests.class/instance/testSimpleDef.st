tests
testSimpleDef
	| result def ref |
	result := self good: #Module parse: 'def testObj = 3
testObj
'.
	self assert: result scope class equals: GraceModuleScope.
	self assert: (result scope defines: 'testObj').
	def := result items first.
	self assert: def isA: #DefDeclaration.
	ref := result items second.
	self assert: ref isA: #Identifier