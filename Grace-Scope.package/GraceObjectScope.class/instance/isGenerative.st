testing
isGenerative
	^ self node isGraceClass or: (self outerScope node isMethod)