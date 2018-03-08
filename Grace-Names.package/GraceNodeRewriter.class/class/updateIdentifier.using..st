request rewriting
updateIdentifier: anIdentifierNode using: aResolvedVariable
	| newNode scanner outerDotToken objectsUp request |
	scanner := anIdentifierNode scanner.
	anIdentifierNode definingOccurence: aResolvedVariable definition.
	objectsUp := aResolvedVariable objectsUp.
	aResolvedVariable definition isMethod ifFalse: [ ^ self ].
	request := GraceRequestPartNoArgumentsNode new requestPart: anIdentifierNode id.
	objectsUp = 0 ifTrue: [ 
		newNode := GraceSelfRequestNode new request: request.
		newNode selfDotToken:
					(GraceToken
						value: ''
						start: anIdentifierNode startPosition
						ids: {scanner selfDotId}
						scanner: scanner) ].
	objectsUp > 0 ifTrue: [ 
		newNode := GraceOuterRequestNode new request: request.
		outerDotToken := GraceToken
				value: ''
				start: anIdentifierNode startPosition
				ids: {scanner outerDotId}
				scanner: scanner.
		newNode outerDotTokens: ((1 to: objectsUp) collect: [ :_ | outerDotToken ]) ].
	anIdentifierNode replaceWith: newNode