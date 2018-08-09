visiting
visitBinaryMessageNode: aMessage
	| selector |
	selector := aMessage selector.
	self << '('.
	self visitNode: aMessage receiver.
	self ensureASpace.
	self << selector << ' '.
	self emitOperatorArgument: aMessage arguments first.
	self << ') '