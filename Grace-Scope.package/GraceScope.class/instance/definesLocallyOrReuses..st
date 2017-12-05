testing
definesLocallyOrReuses: name
	"Is name defined in this scope, or a scope that it reuses (ignoring surrounding scopes)"
	self assert: (name isKindOf: String).
	^ (names includesKey: name) or: [ self reuses: name ]