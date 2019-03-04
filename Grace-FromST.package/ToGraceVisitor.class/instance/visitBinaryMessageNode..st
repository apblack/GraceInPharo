visiting
visitBinaryMessageNode: aMessage
	| selector needsParens p |
	selector := aMessage selector.
	p := aMessage parent.
	needsParens := (p isMessage and: [p selector = aMessage selector]) not.
	needsParens ifTrue: [self << '('].
	self visitNode: aMessage receiver.
	self ensureASpace.
	self << selector << ' '.
	self emitOperatorArgument: aMessage arguments first.
	needsParens ifTrue: [self << ') '] ifFalse: [ self ensureASpace ]