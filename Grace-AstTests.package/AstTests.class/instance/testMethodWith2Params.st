tests
testMethodWith2Params
	| result defTestObj methSum |
	result := self good: #Module parse: 'def testObj = object {
    method sum(x, y:Number)  { print (x + y) }
}

print(testObj.a(3, 4))
'.
	self assert: result scope class equals: GraceModuleScope.
	self assert: (result scope defines: 'testObj').
	defTestObj := result items first.
	self assert: defTestObj isA: #VariableDecl.
	self assert: defTestObj isAttribute.
	self assert: defTestObj rhs isA: #ObjectConstructor.
	methSum := defTestObj rhs items first.
	self assert: methSum isMethod description: methSum printString , 'is not a method'.
	self assert: methSum isAttribute description: methSum printString , 'is not an attribute'.
	self assert: (defTestObj rhs scope defines: 'sum(_,_)')