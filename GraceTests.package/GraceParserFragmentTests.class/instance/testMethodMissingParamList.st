tests-Declarations
testMethodMissingParamList
	self bad: #Declaration parse: 
		'method sum(x:Number) and (y:Number, z) and -> Number { x + y + z}'