scope creation
visitBlockParameter: blockParam

	blockParam scope add: (GraceParameter fromDecl: blockParam) withName: blockParam id value.
	self visitChildren: blockParam.
	^ blockParam