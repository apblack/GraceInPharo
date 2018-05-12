combining
meet: anotherTypeScope
	"create and return a new scope that is the mathematical meet of self and anotherTypeScope"
	| result |
	result := self class new.
	anotherTypeScope localNamesAndValuesDo: [ :nm :rightVal |
		(self lookupLocally: nm ifAbsent: [nil])
			ifNotNil: [ :leftVal | result add: (leftVal meet: rightVal) withName: nm ]
	].
	^ result