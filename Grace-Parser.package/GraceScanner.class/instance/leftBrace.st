token-actions
leftBrace
	braceDepth := braceDepth + 1.
	^ self createTokenFor: '{'