accessing instances
instance
	^ uniqueInstance ifNil: [ uniqueInstance := self new ]