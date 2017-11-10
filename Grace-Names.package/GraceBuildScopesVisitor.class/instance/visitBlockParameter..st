scope creation
visitBlockParameter: blockParam

	blockParam id ifNil: [ "the id will be nil in a block that has a pattern but no id"
			blockParam id: (GraceIdentifierNode irrelevantAt: blockParam startPosition)
	] ifNotNil: [ :id | 
			blockParam scope add: (GraceParameter fromDecl: blockParam) withName: id stringName
	].
	self visitChildren: blockParam.
	^ blockParam