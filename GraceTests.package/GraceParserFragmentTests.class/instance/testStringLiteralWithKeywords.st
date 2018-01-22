tests-Expressions
testStringLiteralWithKeywords
	"The point of this test is that the presence of keywords in the string is irrelevant"
	self good: #String as: #StringLiteral parse: '"this is not a def or a var"' 
	