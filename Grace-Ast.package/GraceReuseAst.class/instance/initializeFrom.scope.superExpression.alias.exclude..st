instance initialization
initializeFrom: aRange scope: aScope superExpression: aSuper alias: someAliases exclude: someExclusions
	self initializeFrom: aRange scope: aScope.
	superExpression := aSuper.
	aliases := someAliases.
	excludes := someExclusions