generated
scan19X26
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(54) ].
	currentCharacter == $(
		ifTrue: [ ^ self scan19X22 ].
	currentCharacter == $)
		ifTrue: [ ^ self scan19X21 ].
	currentCharacter == $,
		ifTrue: [ ^ self scan19X20 ].
	currentCharacter == $-
		ifTrue: [ ^ self scan19X3 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan19X8 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan31 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan19X1 ].
	currentCharacter == $;
		ifTrue: [ ^ self scan19X14 ].
	currentCharacter == $=
		ifTrue: [ ^ self scan19X7 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan40 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	^ self scan19X25