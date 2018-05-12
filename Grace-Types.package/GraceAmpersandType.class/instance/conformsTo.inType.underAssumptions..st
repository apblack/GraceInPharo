conformance
conformsTo: aType inType: selfType underAssumptions: assumptions
	^ operands allSatisfy: [ :each |
		each conformsTo: aType inType: selfType underAssumptions: assumptions ]