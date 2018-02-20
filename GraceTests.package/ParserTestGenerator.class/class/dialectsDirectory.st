constants
dialectsDirectory
	"a file Reference to the directory containing the dialect definitions."

	| dDir |
	dDir := FileSystem / 'Users/black/Development/Pharo/Grace Parsing 2017/'.
	self assert: dDir exists 
		description: ['The directory ', dDir path asString, ' does not exist.'].
	^ dDir