testing
defines: name
	"Is name defined in this scope, or in one of the lexically surrounding scopes?"

	^ (self definesLocallyOrReuses: name) or: [ outerScope defines: name ]