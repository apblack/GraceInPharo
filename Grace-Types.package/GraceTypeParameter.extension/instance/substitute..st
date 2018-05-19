*Grace-Types
substitute: bindings
	"bindings maps type parameters to argument values"
	| argValue |
	argValue := bindings at: self ifAbsent: [ ^ self ].
	self halt.
	^ argValue