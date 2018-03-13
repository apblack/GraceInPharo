request rewriting
updateIdentifier: anIdentifierNode using: aResolvedVariable
	| newNode request |
	anIdentifierNode definingOccurence: aResolvedVariable definition.
	aResolvedVariable definition isMethod
		ifFalse: [ ^ self ].
	request := GraceRequestPartNoArgumentsNode new
		requestPart: anIdentifierNode id.
	newNode := self
		generateOneselfRequestOf: request
		from: anIdentifierNode
		objectsOut: aResolvedVariable objectsUp.
	anIdentifierNode replaceWith: newNode