testing
defines: name
	"Is name defined in this scope, or in one of the lexically surrounding scopes?"
	self assert: (name isKindOf: String).
	^ (names includesKey: name) or: [ outerScope defines: name ]