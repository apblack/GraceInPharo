token-actions
leftBrace
	(state = #default) ifTrue:  [ self tallyLeftBrace ].
	^ self createTokenFor: '{'