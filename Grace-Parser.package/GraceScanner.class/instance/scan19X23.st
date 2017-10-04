generated
scan19X23
	(currentCharacter == $[
		or: [ currentCharacter = (Character value: 10215) ])
		ifTrue: [ ^ self scan19X13 ].
	('<>|' includes: currentCharacter)
		ifTrue: [ ^ self scan19X4 ].
	('PTl' includes: currentCharacter)
		ifTrue: [ ^ self scan19X11 ].
	(currentCharacter <= Character backspace
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter = (Character value: 14)
						or: [ currentCharacter == Character arrowDown
								or: [ currentCharacter = (Character value: 8211) ] ] ] ])
		ifTrue: [ ^ self scan19X15 ].
	(currentCharacter isSpecial
		or: [ (currentCharacter between: $# and: $$)
				or: [ currentCharacter == $^ ] ])
		ifTrue: [ ^ self scan29 ].
	currentCharacter isSafeForHTTP
		ifTrue: [ ^ self scan39 ].
	^ self scan20