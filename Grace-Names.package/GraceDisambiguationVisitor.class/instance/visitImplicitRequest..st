visit methods
visitImplicitRequest: anImplicitNode
	GraceNodeRewriter rewriteImplicitRequest: anImplicitNode.
	^ super visitImplicitRequest: anImplicitNode