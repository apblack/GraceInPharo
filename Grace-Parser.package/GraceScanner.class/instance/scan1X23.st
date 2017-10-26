generated
scan1X23
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter isDashPunctuation
		ifTrue:
			[ ^ self scan1X6 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan1X9 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scan1X7 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan1X4 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan1X8 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan1X17 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan1X16 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan1X3 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan5 ].
	^ self scan1X22