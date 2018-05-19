conformance
substitute: bindings 
	| newSig |
	newSig := self copy.
	newSig parameters: (self parameters collect: [ :each | each substitute: bindings ]).
	newSig result: (result substitute: bindings).
	^ newSig