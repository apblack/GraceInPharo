accessing
receiver
	"To avoid shift-reduce conflicts, OuterRequestNodes end with an <outerDot> token, rather than an <outer> token and a <dot> token.  In contrast, OuterNodes end with a single <outer> token.  Here we synthesize an appropriate OuterNode by patching in a synthetic <outer> token."
	| node finalOutDotToken scanner finalOuterToken |
	node := GraceOuterNode new.
	node outerDotTokens: (OrderedCollection newFrom: outerDotTokens).
	finalOutDotToken := node outerDotTokens removeLast.
	scanner := finalOutDotToken scanner.
	finalOuterToken := GraceToken 
								value: 'outer' 
								start: finalOutDotToken startPosition 
								ids: {scanner outerId}
								scanner: scanner.
	node outerToken: finalOuterToken.
	^ node