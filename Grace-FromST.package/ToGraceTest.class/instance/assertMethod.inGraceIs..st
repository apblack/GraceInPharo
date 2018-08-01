test helpers
assertMethod: m inGraceIs: desired
	| generatedGrace |
	generatedGrace := String
		streamContents: [ :s | 
			| v |
			v := ToGraceVisitor new outStream: s.
			m ast acceptVisitor: v ].
	self assert: generatedGrace equals: desired