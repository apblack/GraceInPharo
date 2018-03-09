instance access
instance
	^ uniqueInstance ifNil: [  uniqueInstance := self basicNew initialize ]