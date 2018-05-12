*Grace-Names
objectScopeFor: aNode
	| receiverScope |
	receiverScope := aNode scope.
	self objectsOut timesRepeat: [
		receiverScope := receiverScope enclosingObjectScope ].
	receiverScope isReusable ifTrue: [
		^ GraceReuseError notManifest: aNode ]. 
	^ self request objectScopeInScope: receiverScope for: aNode
		