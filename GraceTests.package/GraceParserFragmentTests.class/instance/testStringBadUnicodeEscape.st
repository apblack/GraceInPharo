tests-Expressions-Bad
testStringBadUnicodeEscape
	self bad: #String parse: '"\U00A0 what''s up?"'  " needs 6 digits after U"
	