generated
scan14
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	currentCharacter == $(
		ifTrue: [ ^ self scan14X26 ].
	currentCharacter == $)
		ifTrue: [ ^ self scan14X25 ].
	currentCharacter == $,
		ifTrue: [ ^ self scan14X24 ].
	currentCharacter == $-
		ifTrue: [ ^ self scan14X2 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan14X1 ].
	currentCharacter == $;
		ifTrue: [ ^ self scan14X23 ].
	currentCharacter == $=
		ifTrue: [ ^ self scan14X4 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan14X18 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan20 ].
	currentCharacter == $a
		ifTrue: [ ^ self scan14X10 ].
	^ self scan14X28