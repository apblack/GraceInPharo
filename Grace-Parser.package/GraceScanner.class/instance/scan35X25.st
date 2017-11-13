generated
scan35X25
	currentCharacter == $p
		ifTrue: [ ^ self scan85 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan88 ].
	currentCharacter == $s
		ifTrue: [ ^ self scan92 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan95 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan35X7 ].
	currentCharacter == $v
		ifTrue: [ ^ self scan35X8 ].
	currentCharacter == $w
		ifTrue: [ ^ self scan97 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $}
		ifTrue: [ ^ self scan35X17 ].
	currentCharacter = (Character value: 8249)
		ifTrue: [ ^ self scan35X16 ].
	currentCharacter = (Character value: 8250)
		ifTrue: [ ^ self scan35X15 ].
	^ self scan35X24