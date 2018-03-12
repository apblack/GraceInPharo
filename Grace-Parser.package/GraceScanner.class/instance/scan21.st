generated
scan21
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scan21X4 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scan21X28 ].
	currentCharacter == $)
		ifTrue:
			[ ^ self scan21X27 ].
	currentCharacter == $,
		ifTrue:
			[ ^ self scan21X26 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan21X16 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan21X18 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan21X25 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan21X24 ].
	currentCharacter == $S
		ifTrue:
			[ ^ self scan21X13 ].
	currentCharacter == $U
		ifTrue:
			[ ^ self scan21X17 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan21X23 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan21X22 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan21X7 ].
	currentCharacter == $c
		ifTrue:
			[ ^ self scan21X12 ].
	currentCharacter == $d
		ifTrue:
			[ ^ self scan21X2 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan21X3 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan21X10 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan25 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan21X6 ].
	currentCharacter == $o
		ifTrue:
			[ ^ self scan21X9 ].
	currentCharacter == $p
		ifTrue:
			[ ^ self scan21X5 ].
	currentCharacter == $r
		ifTrue:
			[ ^ self scan21X8 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan21X1 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan21X15 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan21X14 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scan21X21 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue:
			[ ^ self scan21X20 ].
	currentCharacter =
		(Character value: 8250)
		ifTrue:
			[ ^ self scan21X19 ].
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
																										or: [ ('nqs' includes: currentCharacter)
																												or: [ (currentCharacter between: $w and: $z)
																														or: [ currentCharacter == $|
																																or: [ (currentCharacter between: $~ and: (Character value: 8248))
																																		or: [ currentCharacter >= (Character value: 8251) ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch