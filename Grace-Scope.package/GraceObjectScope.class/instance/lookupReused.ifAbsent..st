accessing definitions
lookupReused: name ifAbsent: aBlock
	"Return the variable corresponding to name, if it is defined in a scope that this 
	scope reuses.	If it is not defined, return the value of executing aBlock."
	
	self areReusedNamesCompleted ifFalse: [ self error: 'reused names of ' , self printString , 
										' declared on ', node range lineRangePrintString , 
										' have not been gathered' ].
	^ reusedNames at: name ifAbsent: [ aBlock value ]
	
