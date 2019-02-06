combining
join: anotherScope
	"create and return a new scope that is the mathematical join of self and anotherTypeScope.
	it contains the definitions from both of these scopes."
	| result |
	result := self copy.
	anotherScope localNamesAndValuesDo: [ :nm :val |
		result lookupLocally: nm 
			ifAbsent: [ result add: val withName: nm ]
			ifPresent: [ :originalVal | result redefine: (val join: originalVal) withName: nm ]
	].
	^ result