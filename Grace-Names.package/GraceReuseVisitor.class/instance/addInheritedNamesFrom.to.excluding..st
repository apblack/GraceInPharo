scope building
addInheritedNamesFrom: reusedScope to: result excluding: excludedNames
	reusedScope
		localAndReusedNamesAndValuesDo: [ :nm :val | 
			(excludedNames includes: nm)
				ifFalse: [ result add: val withName: nm ] ]