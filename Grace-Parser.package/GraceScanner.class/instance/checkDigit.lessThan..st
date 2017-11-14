numerals
checkDigit: ch lessThan: base
	ch digitValue < base ifTrue: [ ^ self ].
	self lexicalError: ('`{1}` is not a valid digit for a base-{2} numeral' 
								format: { ch asString . base } )