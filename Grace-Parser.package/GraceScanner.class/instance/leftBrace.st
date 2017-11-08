token-actions
leftBrace
	(state = #default) ifTrue:  [ self incrementBraceDepth ].
	^ self createTokenFor: '{'