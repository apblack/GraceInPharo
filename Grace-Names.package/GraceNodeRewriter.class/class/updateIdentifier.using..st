request rewriting
updateIdentifier: anIdentifierNode using: aResolvedVariable
	"we know that anIdentifierNode refers to aResolvedVariable.  Reflect this in the parse tree"
	| newNode request |
	anIdentifierNode definingOccurence: aResolvedVariable definition.
	aResolvedVariable isSimpleVariable ifTrue: [ ^ self ].
	request := GraceRequestPartNoArgumentsNode new requestPart: anIdentifierNode id.
	newNode := GraceOneselfRequestNode new 
		request: request;
	 	receivingScope: aResolvedVariable definingScope.
	newNode fixParentPointers.
	anIdentifierNode replaceWith: newNode