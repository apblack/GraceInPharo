generated
scan17
	[ self step.
	currentCharacter == $o
		ifTrue: [ (self scanForString: 'uter')
				ifTrue: [ ^ self recordAndReportMatch: #(48) ].
			^ self reportLastMatch ].
	currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
	^ self reportLastMatch