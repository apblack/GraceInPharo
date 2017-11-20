generated
scan35
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(60) ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scan35X5 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scan35X25 ].
	currentCharacter == $)
		ifTrue:
			[ ^ self scan35X24 ].
	currentCharacter == $,
		ifTrue:
			[ ^ self scan35X23 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan35X13 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan35X15 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan35X22 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan35X21 ].
	currentCharacter == $U
		ifTrue:
			[ ^ self scan35X14 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan35X20 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan35X19 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan35X7 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan39 ].
	currentCharacter == $d
		ifTrue:
			[ ^ self scan35X3 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan35X4 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan35X8 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan41 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan35X6 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan43 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan44 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan45 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan35X10 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan35X1 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan35X12 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan35X11 ].
	currentCharacter == $w
		ifTrue:
			[ ^ self scan35X2 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scan35X18 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue:
			[ ^ self scan35X17 ].
	currentCharacter =
		(Character value: 8250)
		ifTrue:
			[ ^ self scan35X16 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $$ and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $/ and: $9)
										or: [ currentCharacter == $<
												or: [ (currentCharacter between: $> and: $T)
														or: [ (currentCharacter between: $V and: $Z)
																or: [ (currentCharacter between: $^ and: $`)
																		or: [ currentCharacter == $b
																				or: [ (currentCharacter between: $g and: $h)
																						or: [ (currentCharacter between: $j and: $l)
																								or: [ ('nq' includes: currentCharacter)
																										or: [ (currentCharacter between: $x and: $z)
																												or: [ currentCharacter == $|
																														or: [ (currentCharacter between: $~ and: (Character value: 8248))
																																or: [ currentCharacter >= (Character value: 8251) ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch