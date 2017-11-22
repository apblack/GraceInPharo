initialization
initialize
	super initialize.
	self bindKeyCombination: Character tab asKeyCombination toAction: [self spacesForTab].
	self inspect.