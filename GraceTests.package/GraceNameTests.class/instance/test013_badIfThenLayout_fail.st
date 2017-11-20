minigrace failing
test013_badIfThenLayout_fail
	| result |
	result := self good: #Module parse: 'if (4<5)
then { print "4 is less than 5" }
else { print "oh dear" }
'.
	self assert: result isA: #Module.
	self assert: result items size = 3.
	result items do: [ :each | self assert: each isA: #RequestWithArguments ].
	self assert: result items first requestedName equals:'if(_)'.
	self assert: result items second requestedName equals: 'then(_)'.
	self assert: result items third requestedName equals: 'else(_)'