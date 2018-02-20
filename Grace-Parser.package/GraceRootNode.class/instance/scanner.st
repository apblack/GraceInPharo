accessing
scanner
	^ self
		attributeNamed: #scanner
		ifAbsentPut: [ self findScanner ]