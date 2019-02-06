accessing definitions
lookupReused: name ifAbsent: aBlock ifPresent: pBlock
	"If the variable corresponding to name is defined in a scope that this 
	scope reuses, apply pBlock to it and return the result.
	If it is not defined, return the value of executing aBlock."
	
	| var |
	self areReusedNamesCompleted ifFalse: [ self error: 'reused names of ' , self printString , 
										' declared on ', node range lineRangePrintString , 
										' have not been gathered' ].
	var := reusedNames at: name ifAbsent: [ ^ aBlock value ].
	^ pBlock value: var
	
