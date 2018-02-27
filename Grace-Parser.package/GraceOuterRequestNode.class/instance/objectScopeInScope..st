accessing inner scopes
objectScopeInScope: aScope 
	| receiverScope |
	receiverScope := aScope.
	outerDotTokens size timesRepeat: [
		receiverScope := receiverScope outerScope ].
	receiverScope isReusable ifTrue: [ 
		^ GraceReuseError 
				signal: 'Sorry, you can''t inherit from ' , receiverScope node description
				withTag: receiverScope node ]. 
	^ self request objectScopeInScope: receiverScope
		