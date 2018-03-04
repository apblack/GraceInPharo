scope building
addUsedNamesFrom: reusedScope to: result excluding: excludedNames
	reusedScope
		localAndReusedNamesAndValuesDo: [ :nm :val | 
			((excludedNames includes: nm)
				or: [ val definingNode isFrom_graceObject ])
				ifFalse: [ result add: val withName: nm ] ]