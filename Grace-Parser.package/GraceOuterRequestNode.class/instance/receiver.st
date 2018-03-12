accessing
receiver
	| node |
	node := GraceOuterNode new.
		node outerDotTokens: self outerDotTokens.
	^ node