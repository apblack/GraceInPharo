method access
methodNamed: aName ifAbsent: aBlock
	^ methodDict at: aName ifAbsent: aBlock