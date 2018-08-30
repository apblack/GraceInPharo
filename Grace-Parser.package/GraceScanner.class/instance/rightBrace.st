token-actions
rightBrace
	| rightBraceToken |
	rightBraceToken := self createTokenFor: '}'.
	(state = #default) ifTrue: [
		(unmatchedLeftBraces > 0) ifTrue: [ unmatchedLeftBraces := unmatchedLeftBraces - 1].
		currentLineBraceDepth := currentLineBraceDepth - 1.
		(currentLineBraceDepth < 0) ifTrue: [ 
			^ self 
				lexicalError: 'There is no opening brace corresponding to this closing brace' 
				tag: rightBraceToken ] ].
	^ rightBraceToken