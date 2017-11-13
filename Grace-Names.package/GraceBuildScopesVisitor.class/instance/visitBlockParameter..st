scope creation
visitBlockParameter: blockParam

	self halt.
	blockParam id ifNotNil: [ :id | 
			blockParam scope add: (GraceParameter fromDecl: blockParam) withName: id name
	].
	self visitChildren: blockParam.
	^ blockParam