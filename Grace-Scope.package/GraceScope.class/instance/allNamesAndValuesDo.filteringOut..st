enumeration - private
allNamesAndValuesDo: aBlock filteringOut: closerDefinitions
	names keysAndValuesDo: [ :name :defn | 
		(closerDefinitions includes: name) ifFalse: [
			aBlock value: name value: defn.
			closerDefinitions add: name 
		]
	].
	self reusedNames keysAndValuesDo: [ :name :defn | 
		(closerDefinitions includes: name) ifFalse: [
			aBlock value: name value: defn.
			closerDefinitions add: name 
		]
	].
	outerScope allNamesAndValuesDo: aBlock filteringOut: closerDefinitions
