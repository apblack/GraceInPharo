test helpers
parseFile: aFileReference
	"try parsing aFileReference.  Fail iff the parse fails"
	
	| result |
	result := self parserUnderTest parseStream: aFileReference readStream.
	self assert: result isA: #Module.
	^ result
	