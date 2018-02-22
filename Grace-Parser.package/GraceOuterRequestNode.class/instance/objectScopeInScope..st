accessing inner scopes
objectScopeInScope: aScope 
	| receiverScope |
	receiverScope := aScope.
	outerDotTokens size timesRepeat: [
		receiverScope := receiverScope outerScope ]. 
	^ self request objectScopeInScope: receiverScope
		