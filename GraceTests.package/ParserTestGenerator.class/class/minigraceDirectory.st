constants
minigraceDirectory
	"a file Reference to the directory containing the minigrace source."

	| mgDir |
	mgDir := FileSystem / 'Users' / 'black' / 'Development' / 'mg' / 'gracelang' / 'minigrace' .
	self assert: mgDir exists 
		description: ['The directory ', mgDir path asString, ' does not exist.'].
	^ mgDir