generated
scan38
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(61) ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scan38X6 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scan38X27 ].
	currentCharacter == $)
		ifTrue:
			[ ^ self scan38X26 ].
	currentCharacter == $,
		ifTrue:
			[ ^ self scan38X25 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan38X14 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan38X17 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan38X24 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan38X23 ].
	currentCharacter == $S
		ifTrue:
			[ ^ self scan38X16 ].
	currentCharacter == $U
		ifTrue:
			[ ^ self scan38X15 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan38X22 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan40 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan38X21 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan38X8 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan42 ].
	currentCharacter == $d
		ifTrue:
			[ ^ self scan38X3 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan38X5 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan38X9 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan44 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan38X7 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan46 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan47 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan48 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan38X11 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan38X1 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan38X13 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan38X12 ].
	currentCharacter == $w
		ifTrue:
			[ ^ self scan38X2 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scan38X20 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue:
			[ ^ self scan38X19 ].
	currentCharacter =
		(Character value: 8250)
		ifTrue:
			[ ^ self scan38X18 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $$ and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $/ and: $9)
										or: [ currentCharacter == $<
												or: [ (currentCharacter between: $> and: $R)
														or: [ currentCharacter == $T
																or: [ (currentCharacter between: $V and: $Z)
																		or: [ (currentCharacter between: $^ and: $`)
																				or: [ currentCharacter == $b
																						or: [ (currentCharacter between: $g and: $h)
																								or: [ (currentCharacter between: $j and: $l)
																										or: [ ('nq' includes: currentCharacter)
																												or: [ (currentCharacter between: $x and: $z)
																														or: [ currentCharacter == $|
																																or: [ (currentCharacter between: $~ and: (Character value: 8248))
																																		or: [ currentCharacter >= (Character value: 8251) ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch