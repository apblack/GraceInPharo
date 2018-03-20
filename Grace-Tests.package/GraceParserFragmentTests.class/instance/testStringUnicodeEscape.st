tests-Expressions
testStringUnicodeEscape
	self good: #String as: #StringLiteral parse: '"\U00A0FF what''s up?"'  " needs 6 digits after U"
	