testing
reuses: name
	"Is name defined by a scope that this scope reuses?"
	self assert: (name isKindOf: String).
	^ reusedNames includesKey: name