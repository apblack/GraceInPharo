private
emitArgument: arg
	(arg isBlock or: [arg isLiteralNode or: [arg isDynamicArray]]) ifTrue: [ 
		self visitNode: arg
	] ifFalse: [ 
		self << '('.
		self visitNode: arg.
		self ensureNoSpace.
		self << ')'
	]