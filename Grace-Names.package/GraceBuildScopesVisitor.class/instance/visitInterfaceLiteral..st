visit methods
visitInterfaceLiteral: anInterfaceLiteral
	self createScope: GraceInterfaceScope in: anInterfaceLiteral.
	^ super visitInterfaceLiteral: anInterfaceLiteral