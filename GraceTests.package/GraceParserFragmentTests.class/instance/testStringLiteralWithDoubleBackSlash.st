tests-Expressions
testStringLiteralWithDoubleBackSlash
	self good: #String as: #StringLiteral parse: '"\\u202f is not in category Zs"' 
	