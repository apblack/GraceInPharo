visit methods
visitInterfaceLiteral: anInterfaceLiteral
	anInterfaceLiteral methods do: [ :signature |
		self createScope: GraceMethodScope in: signature].
	^ super visitInterfaceLiteral: anInterfaceLiteral 