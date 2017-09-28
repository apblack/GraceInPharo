tests-Expressions
testStringWithEscapes
	self good: #String as: #StringLiteral parse: '"ab\t\u00A0"' 
	