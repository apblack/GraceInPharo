testing
isOnceMethod
	^ isOnceMethod ifNil: [ isOnceMethod := self definingParseNode isOnceMethod ]