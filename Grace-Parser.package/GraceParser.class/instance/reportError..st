error handling
reportError: anInteger
	(currentToken ids includes: self scanner errorId) ifTrue: [ 
		^ self reportErrorMessage: 'Lexical Error - ', currentToken value ].
	self
		reportErrorMessage:
			(anInteger = 0
				ifTrue: [ 'Token ' , currentToken printString , ' not expected' ]
				ifFalse: [ self errorTable at: anInteger ])