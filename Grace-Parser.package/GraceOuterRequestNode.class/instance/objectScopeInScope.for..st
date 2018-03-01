accessing inner scopes
objectScopeInScope: aScope for: aNode
	| receiverScope |
	receiverScope := aScope.
	outerDotTokens size timesRepeat: [
		receiverScope := receiverScope enclosingObjectScope ].
	receiverScope isReusable ifTrue: [
		^ GraceReuseError notManifest: aNode ]. 
	^ self request objectScopeInScope: receiverScope for: aNode
		