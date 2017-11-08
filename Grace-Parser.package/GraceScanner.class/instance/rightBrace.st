token-actions
rightBrace
	(state = #default) ifTrue: [ currentLineBraceDepth := currentLineBraceDepth - 1 ].
	^ self createTokenFor: '}'