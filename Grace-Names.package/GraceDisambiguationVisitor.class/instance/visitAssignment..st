visit methods
visitAssignment: anAssignment
	"detect assignment requests, and replace assignment nodes with request nodes"
	| lhs binding newNode |
	lhs := anAssignment lhs.
	binding := anAssignment scope lookup: anAssignment assignmentRequestName ifAbsent: [ | badBinding |
		badBinding := anAssignment scope lookup: lhs name ifAbsent: [ 
			^ self assignmentError: lhs name , ' is not declared' node: lhs ].
	   self assert: [badBinding isAssignable not].  
			"if it were assignable, then there would be an assignment method in the scope"
		self assignmentError: 'You can''t assign to ' , lhs name , 
								 ' because it is declared as a ' , badBinding kind 
			  node:  lhs ].
	binding isMethod ifFalse: [ ^ super visitAssignment: anAssignment ].
	newNode := self buildRequestFromAssignment: anAssignment.
	anAssignment replaceWith: newNode.
	^ self visitRequestPartWithArguments: newNode