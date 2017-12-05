testing
reuses: name
	"Is name defined a scope that this scope reuses?"
	self assert: (name isKindOf: String).
	^ reusedNames includesKey: name