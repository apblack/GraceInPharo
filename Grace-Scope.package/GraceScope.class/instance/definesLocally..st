testing
definesLocally: name
	"Is name defined in this scope (ignoring surrounding scopes)"

	^ (names at: name ifAbsent: [ ^ false ]) isConcrete