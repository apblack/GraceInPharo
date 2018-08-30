temporaries
isAssignedOnce: aTempVarName 
	^ (tempAssignments at: aTempVarName ifAbsent: [0]) = 1