request rewriting
generateOneselfRequestOf: request from: aSourceNode objectsOut: objectsUp
	| newNode outerDotToken scanner |
	scanner := aSourceNode scanner.
	objectsUp = 0 ifTrue: [
		newNode := GraceSelfRequestNode new request: request.
		newNode selfDotToken: (GraceToken
						value: ''
						start: aSourceNode startPosition
						ids: {scanner selfDotId}
						scanner: scanner) 
	] ifFalse: [ 
		newNode := GraceOuterRequestNode new request: request.
		outerDotToken := GraceToken
				value: ''
				start: aSourceNode startPosition
				ids: {scanner outerDotId}
				scanner: scanner.
		newNode outerDotTokens: ((1 to: objectsUp) collect: [ :_ | outerDotToken ]) 
	].
	^ newNode fixParentPointers