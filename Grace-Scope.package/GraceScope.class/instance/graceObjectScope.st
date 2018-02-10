graceObject
graceObjectScope
	self halt.
	^ self lookup: 'graceObject' ifAbsent: [ 
		self dialectError: 'the dialect must define `graceObject`' ]