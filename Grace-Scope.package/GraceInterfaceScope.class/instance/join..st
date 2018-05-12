combining
join: anotherTypeScope
	"create and return a new scope that is the mathematical join of self and anotherTypeScope"
	| result |
	result := self copy.
	anotherTypeScope localNamesAndValuesDo: [ :nm :val |
		(result lookupLocally: nm ifAbsent: [ result add: val withName: nm. nil ])
			ifNotNil: [ :originalVal | result redefine: (val join: originalVal) withName: nm ]
	].
	^ result