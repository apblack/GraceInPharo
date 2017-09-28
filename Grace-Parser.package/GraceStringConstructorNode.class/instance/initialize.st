generated-initialize-release
initialize
	super initialize.
	_s := OrderedCollection new: 2.
	stringSegments := OrderedCollection new: 2.
	leftBraceTokens := OrderedCollection new: 2.
	interpolations := OrderedCollection new: 2.
	rightBraceTokens := OrderedCollection new: 2.