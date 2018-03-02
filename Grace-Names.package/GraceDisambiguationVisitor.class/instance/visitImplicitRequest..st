visit methods
visitImplicitRequest: anImplicitNode
	self rewriteImplicitRequest: anImplicitNode.
	^ super visitImplicitRequest: anImplicitNode