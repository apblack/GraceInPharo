constants
testDirectory
	"a file Reference to the directory containing the tests to be imported."

	| testDir |
	testDir := FileSystem / 'Users' / 'black' / 'Development' / 'mg' / 'gracelang' / 'minigrace' / 'js' / 'tests'.
	self assert: testDir exists 
		description: ['The directory ', testDir path asString, ' does not exist.'].
	^ testDir