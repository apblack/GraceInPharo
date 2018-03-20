instance initialization
initializeFrom: aCollection declaring: aVariable rhs: anAst 
	declaredThing := aVariable.
	rhs := anAst.
	self initializeFrom: aCollection