accessing
itemsScope
	^ items 
		ifEmpty: [ self scope ] ifNotEmpty: [ items first scope ]