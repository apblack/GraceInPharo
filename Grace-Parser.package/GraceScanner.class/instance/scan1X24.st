generated
scan1X24
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan1X11 ].
	currentCharacter == $S
		ifTrue:
			[ ^ self scan1X8 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan1X20 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan1X19 ].
	currentCharacter == $a
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $c
		ifTrue:
			[ ^ self scan1X6 ].
	currentCharacter == $d
		ifTrue: [ ^ self scan7 ].
	currentCharacter == $e
		ifTrue: [ ^ self scan9 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan1X2 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan11 ].
	^ self scan1X23