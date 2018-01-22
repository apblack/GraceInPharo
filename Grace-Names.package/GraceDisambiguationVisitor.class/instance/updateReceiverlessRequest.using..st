request rewriting
updateReceiverlessRequest: aReceiverlessRequestNode using: aResolvedVariable
	| newNode scanner outerDotToken objectsUp aRequestWithArgumentsNode |
	aRequestWithArgumentsNode := aReceiverlessRequestNode request.
	scanner := aRequestWithArgumentsNode scanner.
	objectsUp := aResolvedVariable objectsUp.
	aResolvedVariable definition isMethod ifFalse: [ ^ self ].
		"aResolvedVariable could be a type with a typeParameter"
	objectsUp = 0 ifTrue: [ 
		newNode := GraceSelfRequestNode new request: aRequestWithArgumentsNode copy.
		newNode selfDotToken:
					(GraceToken
						value: ''
						start: aRequestWithArgumentsNode startPosition
						ids: {scanner selfDotId}
						scanner: scanner) ].
	objectsUp > 0 ifTrue: [ 
		newNode := GraceOuterRequestNode new request: aRequestWithArgumentsNode copy.
		outerDotToken := GraceToken
				value: ''
				start: aRequestWithArgumentsNode startPosition
				ids: {scanner outerDotId}
				scanner: scanner.
		newNode outerDotTokens: ((1 to: objectsUp) collect: [ :_ | outerDotToken ]) ].
	aReceiverlessRequestNode replaceWith: newNode