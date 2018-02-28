testing
isGenerative
	self node isGraceClass ifTrue: [ ^ true ].
	^ self outerScope node isMethod