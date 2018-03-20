tests-Declarations
testMethodMultipleParamLists
	self good: #MethodDeclaration parse: 
		'method sum(x:Number) and (y:Number, z) and (w) -> Number { x + y + z}'