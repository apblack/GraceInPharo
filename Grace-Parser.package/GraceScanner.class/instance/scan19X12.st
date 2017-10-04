generated
scan19X12
	self recordMatch: #(39 41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $]
		ifTrue: [ ^ self scan27 ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue: [ ^ self scan28 ].
	(currentCharacter <= Character arrowDown
		or: [ currentCharacter == $!
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $^ and: $z)
								or: [ (currentCharacter between: $| and: (Character value: 159))
										or: [ currentCharacter >= (Character value: 161) ] ] ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch