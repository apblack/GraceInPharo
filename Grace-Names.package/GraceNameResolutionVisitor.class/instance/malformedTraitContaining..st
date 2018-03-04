error handling
malformedTraitContaining: aBadNode

	^ GraceReuseError signal: aBadNode description , ' is not allowed in a trait' withTag: aBadNode