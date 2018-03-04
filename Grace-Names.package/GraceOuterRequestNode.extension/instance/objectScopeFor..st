*Grace-Names
objectScopeFor: aNode
	| receiverScope |
	receiverScope := aNode scope.
	outerDotTokens size timesRepeat: [
		receiverScope := receiverScope enclosingObjectScope ].
	receiverScope isReusable ifTrue: [
		^ GraceReuseError notManifest: aNode ]. 
	^ self request objectScopeInScope: receiverScope for: aNode
		