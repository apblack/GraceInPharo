enumeration - private
allNamesAndValuesDo: aBlock filteringOut: closerDefinitions
	names keysAndValuesDo: [ :name :def | 
		(closerDefinitions includes: name) ifFalse: [
			aBlock value: name value: def.
			closerDefinitions add: name 
		]
	].
	self reusedNames keysAndValuesDo: [ :name :def | 
		(closerDefinitions includes: name) ifFalse: [
			aBlock value: name value: def.
			closerDefinitions add: name 
		]
	].
	outerScope allNamesAndValuesDo: aBlock filteringOut: closerDefinitions
