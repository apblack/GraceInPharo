generated
scan92X26
	currentCharacter == $)
		ifTrue:
			[ ^ self scan92X19 ].
	currentCharacter == $,
		ifTrue:
			[ ^ self scan92X18 ].
	currentCharacter isDashPunctuation
		ifTrue:
			[ ^ self scan92X2 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan92X4 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan95 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan92X1 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan92X17 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan92X3 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan101 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan92X11 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan92X10 ].
	currentCharacter == $a
		ifTrue: [ ^ self scan105 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan106 ].
	^ self scan92X25