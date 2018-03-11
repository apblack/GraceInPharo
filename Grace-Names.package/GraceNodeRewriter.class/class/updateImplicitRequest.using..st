request rewriting
updateImplicitRequest: anImplicitRequestNode using: aResolvedVariable
	"We know that anImplicitRequestNode has as its receiver the object captured by aResolvedVariable.  Reflect this in the parse tree"
	| newNode aRequestWithArgumentsNode |
	aRequestWithArgumentsNode := anImplicitRequestNode request.
	aResolvedVariable definition isMethod ifFalse: [ ^ self ].
		"aResolvedVariable could be a type with a typeParameter"
	newNode := GraceOneselfRequestNode new
		request: aRequestWithArgumentsNode copy;
		receivingScope: aResolvedVariable definingScope.
	newNode fixParentPointers.
	anImplicitRequestNode replaceWith: newNode