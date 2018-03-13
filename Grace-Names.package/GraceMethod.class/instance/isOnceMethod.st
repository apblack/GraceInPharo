testing
isOnceMethod
	^ isOnceMethod ifNil: [ isOnceMethod := self definingNode isOnceMethod ]