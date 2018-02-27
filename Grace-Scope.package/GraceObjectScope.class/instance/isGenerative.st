testing
isGenerative
	self halt.
	^ self outerScope definingNode isGenerative 