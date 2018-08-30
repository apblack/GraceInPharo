test helpers
tokensFrom: inputString
	| result scanner |
	result := OrderedCollection new.
	scanner := GraceScanner on: inputString readStream.
	inputString readStreamDo: [ :str |
		[ result addLast: scanner next.
		  scanner atEnd ] whileFalse
	].
	^ result