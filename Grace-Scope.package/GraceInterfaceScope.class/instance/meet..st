combining
meet: anotherScope
	"create and return a new scope that is the mathematical meet of self and anotherTypeScope.
	It contains those names common to both self and anotherScope."
	| result |
	result := self class new.
	anotherScope localNamesAndValuesDo: [ :nm :rightVal |
		self lookupLocally: nm 
			ifAbsent: [] 
			ifPresent: [ :leftVal | result add: (leftVal meet: rightVal) withName: nm ]
	].
	^ result