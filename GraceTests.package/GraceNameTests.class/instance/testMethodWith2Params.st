tests
testMethodWith2Params
	| result def |
	result := self good: #Module parse: 'def testObj = object {
    method sum(x, y:Number)  { print (x + y) }
}

print(testObj.a(3, 4))
'.
	self assert: result scope class equals: GraceModuleScope.
	self assert: (result scope defines: 'testObj').
	def := result items first.
	self assert: def isA: #DefDeclaration.
	self assert: def initializer isA: #ObjectConstructor.
	self assert: (def initializer scope defines: 'sum(_,_)')