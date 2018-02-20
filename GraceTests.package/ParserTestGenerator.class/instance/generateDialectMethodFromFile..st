dialects
generateDialectMethodFromFile: aFileReference
	"generates a method that captures a dialect from aFileReference"

	| fileStream dialectName method |
	fileStream := aFileReference readStream.
	dialectName := aFileReference basename copyReplaceAll: '.grace' with: ''.
	method := self dialectMethodNamed: dialectName from: fileStream.
	fileStream close.
	self compileDialectMethod: method inCategory: 'dialects'
	
	