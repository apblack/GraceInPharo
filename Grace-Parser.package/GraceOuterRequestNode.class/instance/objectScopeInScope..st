accessing inner scopes
objectScopeInScope: aScope 
	| receiverScope |
	receiverScope := self scope.
	outerDotTokens size timesRepeat: [
		receiverScope := receiverScope outerScope ]. 
	^ self request objectScopeInScope: receiverScope
		