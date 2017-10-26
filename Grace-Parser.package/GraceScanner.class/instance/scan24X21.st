generated
scan24X21
	(currentCharacter isSeparator
		or: [ currentCharacter <= Character backspace
				or: [ currentCharacter == Character pageUp ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	(currentCharacter = (Character value: 14)
		or: [ currentCharacter == Character arrowDown
				or: [ currentCharacter = (Character value: 127)
						or: [ currentCharacter = (Character value: 8211) ] ] ])
		ifTrue: [ ^ self scan24X12 ].
	(currentCharacter isSpecial
		or: [ (currentCharacter between: $# and: $$)
				or: [ currentCharacter == $^
						or: [ (currentCharacter
								between: (Character value: 8804)
								and: (Character value: 8805))
								or: [ currentCharacter = (Character value: 8901) ] ] ] ])
		ifTrue: [ ^ self scan30 ].
	(currentCharacter isSafeForHTTP
		or: [ currentCharacter = (Character value: 230) ])
		ifTrue: [ ^ self scan39 ].
	^ self scan26