visit methods
visitImplicitRequest: anImplicitNode
	| rewrittenNode |
	rewrittenNode := GraceNodeRewriter rewriteImplicitRequest: anImplicitNode.
	^ rewrittenNode == anImplicitNode 
		ifTrue: [ super visitImplicitRequest: anImplicitNode ] 
		ifFalse: [ rewrittenNode acceptVisitor: self ]