keybindings
initializeKeyBindings
	self bindKeyCombination: Character tab asKeyCombination toAction: [self spacesForTab].
	self bindKeyCombination: Character arrowRight asKeyCombination toAction: [self moveRight].
	self bindKeyCombination: Character arrowLeft asKeyCombination toAction: [self moveLeft].
	self bindKeyCombination: Character arrowLeft alt toAction: [self moveToStartOfLine].
	self bindKeyCombination: ($a control) toAction: [self moveToStartOfLine].
	self bindKeyCombination: ($e control) toAction: [self moveToEndOfLine].
	self bindKeyCombination: ($s command) toAction: [self saveAndCompile].