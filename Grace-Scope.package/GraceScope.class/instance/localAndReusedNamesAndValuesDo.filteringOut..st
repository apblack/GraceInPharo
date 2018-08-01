enumeration - private
localAndReusedNamesAndValuesDo: aBlock filteringOut: closerDefinitions
	names keysAndValuesDo: [ :name :defn | 
		(closerDefinitions includes: name) ifFalse: [
			aBlock value: name value: defn.
			closerDefinitions add: name 
		]
	]