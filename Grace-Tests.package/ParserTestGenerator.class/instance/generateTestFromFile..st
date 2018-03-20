test generation
generateTestFromFile: aFileReference
	"generates a test method from aFileReference"

	| fileStream testName testKind method |
	fileStream := aFileReference readStream.
	testName := (aFileReference basename 
		copyReplaceFrom: 1 to: 1 with: 'test')
		copyReplaceAll: '_test.grace' with: ''.
	testKind := (testName includesSubstring: 'fail') 
		ifTrue: [ 'bad']
		ifFalse: [ 'good' ].
	method := self testMethod: testKind testNamed: testName from: fileStream.
	fileStream close.
	self compileTestMethod: method inCategory: 'minigrace ' , testKind
	
	