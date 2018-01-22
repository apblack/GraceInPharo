visit methods
visitAssignment: anAssignment
	
	| lhs binding newNode |
	lhs := anAssignment lhs.
	binding := anAssignment scope lookup: anAssignment assignmentRequestName ifAbsent: [ | badBinding |
		badBinding := anAssignment scope lookup: lhs name ifAbsent: [ 
			^ self checkerError: lhs name , ' is not declared' node: lhs ].
	   self assert: [badBinding isAssignable not].  
			"if it were assignable, then there would be an assignment method in the scope"
		self checkerError: 'You can''t assign to ' , lhs name , 
								 ' because it is declared as a ' , badBinding kind 
			  node:  lhs ].
	binding isMethod ifTrue: [  | scanner requestToken argList |
		newNode := GraceRequestWithArgumentsNode new.
		scanner := lhs scanner.
		requestToken := GraceToken value: lhs name , ':=' start: lhs startPosition ids: {scanner idId} scanner: scanner.
		newNode addToken: requestToken to: newNode requestParts.
		argList := GraceArgumentListNode new.
		argList addNode: anAssignment rhs to: argList args.
		newNode addNode: argList to: newNode argLists.
		newNode fixParentPointers.
		anAssignment replaceWith: newNode.
		^ self visitRequestWithArguments: newNode ].
	^ super visitAssignment: newNode