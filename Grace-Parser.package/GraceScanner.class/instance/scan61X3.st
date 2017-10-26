generated
scan61X3
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $m
		ifTrue: [ ^ self scan62 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan63 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan61X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $l)
										or: [ (currentCharacter between: $o and: $r)
												or: [ (currentCharacter between: $t and: $z)
														or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan61X2