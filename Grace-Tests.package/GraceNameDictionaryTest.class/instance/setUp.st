running
setUp
	| module |
	super setUp.
	module := self goodParse: 'def standardGraceExtendedControlStructures is abstract'.
	markerDef := module items first.
	nonEmptyDict 
		at: 'standardGraceExtendedControlStructures' 
		put: (GraceDef fromParseTreeNode: markerDef)
	