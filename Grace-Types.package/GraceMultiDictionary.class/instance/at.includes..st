testing
at: aKey includes: aValue
	| entry |
	entry := internalDict at: aKey ifAbsent: [ ^ false ].
	^ entry includes: aValue