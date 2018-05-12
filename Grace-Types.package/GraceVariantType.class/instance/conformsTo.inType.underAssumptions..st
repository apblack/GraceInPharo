conformance
conformsTo: aType inType: selfType underAssumptions: assumptions 
	^ self variants allSatisfy: [ :each |
		each conformsTo: aType inType: selfType underAssumptions: assumptions ]