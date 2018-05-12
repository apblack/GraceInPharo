visitation
acceptNodes: aCollection
	| results |
	results := aCollection collect: [ :each | self acceptNode: each ].
	(results size = 1) ifTrue: [ ^ results first ].
	self error: 'you need to implement a better way of collecting results in ' , self className