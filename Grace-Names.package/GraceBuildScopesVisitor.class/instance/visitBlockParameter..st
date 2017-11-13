scope creation
visitBlockParameter: blockParam

	blockParam id ifNotNil: [ :id | 
			blockParam scope add: (GraceParameter fromParseTreeNode: blockParam) withName: id name
	].
	self visitChildren: blockParam.
	^ blockParam