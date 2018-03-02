testing
definesLocally: name
	"Is name defined in this scope (ignoring surrounding scopes)"
	self assert: (name isKindOf: String).
	^ (names at: name ifAbsent: [ ^ false ]) isConcrete