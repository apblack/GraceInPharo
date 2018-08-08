private
emitOperatorArgument: arg 
	| needsParens |
	needsParens := arg isMessage and: [ arg selector isBinary ].
	needsParens ifTrue: [ self << '(' ].
	self visitNode: arg.
	needsParens ifTrue: [ self ensureNoSpace; << ')' ]