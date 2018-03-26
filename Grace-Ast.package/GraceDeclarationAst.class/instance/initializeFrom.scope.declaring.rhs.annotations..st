instance initialization
initializeFrom: aRange scope: aScope declaring: aVariable rhs: anAst annotations: anns
	declaredThing := aVariable.
	rhs := anAst.
	annotations := anns.
	self initializeFrom: aRange scope: aScope