visit methods
visitInterfaceLiteral: anInterfaceLiteral
	"anInterfaceLiteral methods do: [ :signature |
		self createScope: GraceMethodScope in: signature]."
	self flag: 'clean this up'.
	^ super visitInterfaceLiteral: anInterfaceLiteral 