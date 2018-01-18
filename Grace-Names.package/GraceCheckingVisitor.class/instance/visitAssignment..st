visit methods
visitAssignment: anAssignment
	
	| lhs binding |
	lhs := anAssignment lhs.
	binding := anAssignment scope lookup: lhs name ifAbsent: [ 
		self checkerError: lhs name , 'is not declared' node: lhs ].
	(binding isAssignable) ifFalse: [ 
		self checkerError: 'You can''t assign to ' , lhs name , 
								 ' because it is declared as a ' , binding kind 
			  node:  lhs ].
	^ super visitAssignment: anAssignment