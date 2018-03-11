generated
scan22
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(54) ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scan22X4 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scan22X29 ].
	currentCharacter == $)
		ifTrue:
			[ ^ self scan22X28 ].
	currentCharacter == $,
		ifTrue:
			[ ^ self scan22X27 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan22X17 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan22X19 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan22X26 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan22X25 ].
	currentCharacter == $S
		ifTrue:
			[ ^ self scan22X14 ].
	currentCharacter == $U
		ifTrue:
			[ ^ self scan22X18 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan22X24 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan22X23 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan22X7 ].
	currentCharacter == $c
		ifTrue:
			[ ^ self scan22X12 ].
	currentCharacter == $d
		ifTrue:
			[ ^ self scan22X2 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan22X3 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan22X10 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan26 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan22X6 ].
	currentCharacter == $o
		ifTrue:
			[ ^ self scan22X9 ].
	currentCharacter == $p
		ifTrue:
			[ ^ self scan22X5 ].
	currentCharacter == $r
		ifTrue:
			[ ^ self scan22X8 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan22X13 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan22X1 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan22X16 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan22X15 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scan22X22 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue:
			[ ^ self scan22X21 ].
	currentCharacter =
		(Character value: 8250)
		ifTrue:
			[ ^ self scan22X20 ].
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
																												or: [ (currentCharacter between: $w and: $z)
																														or: [ currentCharacter == $|
																																or: [ (currentCharacter between: $~ and: (Character value: 8248))
																																		or: [ currentCharacter >= (Character value: 8251) ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch