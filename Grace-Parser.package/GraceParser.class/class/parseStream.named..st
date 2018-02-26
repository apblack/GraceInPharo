instance creation
parseStream: aStream named: aName
	| parser |
	parser := self on: aStream.
	parser setStartingState: self defaultStartingState.
	parser moduleName: aName.
	^ parser parse