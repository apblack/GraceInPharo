accessing
innerList
	^ innerList ifNil: [ innerList := OrderedCollection new ]