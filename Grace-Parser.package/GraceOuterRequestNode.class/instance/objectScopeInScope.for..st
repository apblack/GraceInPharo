accessing inner scopes
objectScopeInScope: aScope for: aNode
	| receiverScope |
	receiverScope := aScope.
	outerDotTokens size timesRepeat: [
		receiverScope := receiverScope enclosingObjectScope ].
	receiverScope isReusable ifTrue: [
		^ GraceReuseError 
				signal: 'Sorry, you can''t ' , aNode description , ' ' , aNode superExpr description , 
							', because it might be overriden'
				withTag: aNode ]. 
	^ self request objectScopeInScope: receiverScope for: aNode
		