token-actions
rightBrace
	braceDepth := braceDepth - 1.
	^ self createTokenFor: '}'