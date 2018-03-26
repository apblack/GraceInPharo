instance initialization
initializeFrom: aRange scope: aScope receiver: anAst requestedname: aString arguments: aListAst 
	self initializeFrom: aRange scope: aScope.
	receiver := anAst.
	requestedName := aString.
	arguments := aListAst
	