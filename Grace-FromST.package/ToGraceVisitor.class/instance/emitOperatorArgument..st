private
emitOperatorArgument: arg
	(self needsParenthesisAround: arg) ifFalse: [ 
		self visitNode: arg
	] ifTrue: [
		self << '('.
		self visitNode: arg.
		self ensureNoSpace.
		self << ')'
	]