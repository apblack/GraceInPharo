request rewriting
updateIdentifier: anIdentifierNode using: aResolvedVariable
	| newNode request |
	
	anIdentifierNode variable: aResolvedVariable definition.
	aResolvedVariable definition isMethod
		ifFalse: [ ^ anIdentifierNode ].
	request := GraceRequestPartNoArgumentsNode new
		requestPart: anIdentifierNode id.  
		"no need to copy the id, since the request part is a token, not a node"
	newNode := self
		generateOneselfRequestOf: request
		from: anIdentifierNode
		objectsOut: aResolvedVariable objectsUp.
	anIdentifierNode replaceWith: newNode.
	^ newNode