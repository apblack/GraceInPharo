tests-Expressions
testStringLiteralWithEscapes
	self good: #String as: #StringLiteral parse: '"ab\t\u00A0"' 
	