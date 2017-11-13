generated
scan35
	self step.
	currentCharacter == Character cr
		ifTrue: [ ^ self scan35X10 ].
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(59) ].
	currentCharacter == $#
		ifTrue: [ ^ self scan35X1 ].
	currentCharacter == $(
		ifTrue: [ ^ self scan35X21 ].
	currentCharacter == $)
		ifTrue: [ ^ self scan35X20 ].
	currentCharacter == $,
		ifTrue: [ ^ self scan35X19 ].
	currentCharacter == $-
		ifTrue: [ ^ self scan35X4 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan35X3 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan35X2 ].
	currentCharacter == $;
		ifTrue: [ ^ self scan35X18 ].
	^ self scan35X26