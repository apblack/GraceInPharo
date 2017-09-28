tests-Declarations
testMethodMultipleParamLists
	self good: #Declaration as: #MethodDeclaration parse: 
		'method sum(x:Number) and (y:Number, z) and (w) -> Number { x + y + z}'