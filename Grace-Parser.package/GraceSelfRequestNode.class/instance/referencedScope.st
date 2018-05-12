scopes
referencedScope
	^ self scope isObjectScope 
		ifTrue: [ self scope ]
		ifFalse: [ self scope enclosingObjectScope ]