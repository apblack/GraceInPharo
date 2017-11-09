accessing
scope
	^ scope ifNil: [ scope := parent scope ]