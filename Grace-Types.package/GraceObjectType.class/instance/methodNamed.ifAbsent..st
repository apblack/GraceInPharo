testing
methodNamed: aName ifAbsent: aBlock
	^ methodDict at: aName ifAbsent: aBlock