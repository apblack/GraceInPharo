instance initialization
initializeFrom: aRange scope: aScope parameters: params items: stmts
	self initializeFrom: aRange scope: aScope.
	parameters := params.
	items := stmts