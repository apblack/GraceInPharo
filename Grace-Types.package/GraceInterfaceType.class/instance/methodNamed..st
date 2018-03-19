method access
methodNamed: aName
	^ methodDict at: aName ifAbsent: [ self error: 'this type has no method ' , aName ]