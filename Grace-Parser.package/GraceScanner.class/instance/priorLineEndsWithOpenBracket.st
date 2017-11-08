line handling
priorLineEndsWithOpenBracket
	"This relies on previousMatch being set in #reportLastMatch"
	
	^ '([{' includesSubstring: previousMatch value 
