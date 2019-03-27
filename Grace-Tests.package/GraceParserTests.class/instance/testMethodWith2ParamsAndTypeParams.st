tests - methods
testMethodWith2ParamsAndTypeParams
	| result def sumHeader |
	result := self good: #Module parse: 'def testObj = object {
    method sum⟦T⟧(x, y:T)  { print (x + y) }
}

print(testObj.a(3, 4))
'.
	def := result items first.
	self assert: def isA: #DefDeclaration.
	self assert: def initializer isA: #ObjectConstructor.
	self assert: def initializer items first isA: #MethodDeclaration.
	sumHeader := def initializer items first header.
	self assert: sumHeader parameterLists size equals: 1.
	self assert: sumHeader parameterLists first parameters first name equals: 'x'.
	self assert: sumHeader parameterLists first parameters second name equals: 'y'.
	self assert: sumHeader typeParameters first name equals: 'T'.
	self assert: sumHeader whereConditions equals: nil
	