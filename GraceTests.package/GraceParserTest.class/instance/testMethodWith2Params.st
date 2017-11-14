tests-Declarations
testMethodWith2Params
	| result def |
	result := self good: #Module parse: 'def testObj = object {
    method sum(x, y:Number)  { print (x + y) }
}

print(testObj.a(3, 4))
'.
	def := result body items first.
	self assert: def isA: #DefDeclaration.
	self assert: def initializer isA: #ObjectConstructor.