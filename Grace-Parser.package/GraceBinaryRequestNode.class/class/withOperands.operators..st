instance creation
withOperands: operands operators: operators
	| newNode |
	newNode := self new.
	newNode receiver: operands first;
			addNodes: operands copyWithoutFirst to: newNode args;
			addTokens: operators to: newNode ops.
	^ newNode