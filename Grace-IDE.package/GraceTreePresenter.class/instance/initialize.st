initialization
initialize
	super initialize.
	self workspace: GraceIDEWorkspace new.
	self roots: { self workspace }