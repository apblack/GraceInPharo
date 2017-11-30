examples
example
	| example w |
	example := self new: 'Will you come for a beer'.
	w := example
		openWithSpec.
	w modalRelativeTo: World.
	^ example