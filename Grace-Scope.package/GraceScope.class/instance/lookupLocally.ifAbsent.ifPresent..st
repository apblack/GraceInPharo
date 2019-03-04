accessing definitions
lookupLocally: name ifAbsent: aBlock ifPresent: pBlock
	"Look up variable corresponding to name, which may or may not be defined in this scope.
	If it is not defined, return the result of executing aBlock; otherwise, the result of applying
	pBlock to the variable."

	| var |
	var := names at: name ifAbsent: [ ^ aBlock value ].
	^ pBlock value: var