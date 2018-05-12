request rewriting
rewriteAssignment: anAssignment
	| lhs defs |
	lhs := anAssignment lhs.
	defs := GraceResolvedVariable 
					definitionsOf: anAssignment assignmentRequestName 
					visibleIn: anAssignment scope.
	defs ifEmpty: [ | badBinding |
		badBinding := anAssignment scope lookup: lhs name ifAbsent: [ 
			^ self assignmentError: lhs name , ' is not declared' node: lhs ]. 
		^ self assignmentError: 'You can''t assign to `' , lhs name , 
								 '` because it is not declared as a variable' 
			  	 node:  lhs ].
		"It is tempting to say 'because it is declared as a `badbinding kind`', but that's not right 
		when the lhs of the assignment is an alias to a var.  In that case, the alias is only to the
		reader method on the var, but `badBinding` will be the var itself."
	(defs size > 1) ifTrue: [ ^ self ambiguityError: defs node: lhs ].
	^ self updateAssignment: anAssignment using: defs first
	