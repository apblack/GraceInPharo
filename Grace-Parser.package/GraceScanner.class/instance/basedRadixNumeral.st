token-actions
basedRadixNumeral
	"a numeral of the form 16x34aE has been recognized. Check that the digits are less than the radix."
	
	| wholeNumeral base str |
	wholeNumeral := outputStream contents.
	base := wholeNumeral asNumber.
	base = 0 ifTrue: [ base := 16 ].
	str := wholeNumeral readStream.
	[str next isDigit] whileTrue.
	" the previous value returned from str next was $x, the separator"
	[ str atEnd ] whileFalse: [ self checkDigit: str next lessThan: base ].
	^ self createTokenFor: wholeNumeral