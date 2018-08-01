temporaries
isAssignedOnce: aTempVarName 
	^ (tempAssignments at: aTempVarName) = 1