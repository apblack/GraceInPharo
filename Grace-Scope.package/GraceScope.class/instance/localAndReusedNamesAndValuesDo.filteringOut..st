enumeration
localAndReusedNamesAndValuesDo: aBlock filteringOut: closerDefinitions
	names keysAndValuesDo: [ :name :def | 
		(closerDefinitions includes: name) ifFalse: [
			aBlock value: name value: def.
			closerDefinitions add: name 
		]
	].
	reusedNames keysAndValuesDo: [ :name :def | 
		(closerDefinitions includes: name) ifFalse: [
			aBlock value: name value: def.
			closerDefinitions add: name 
		]
	]