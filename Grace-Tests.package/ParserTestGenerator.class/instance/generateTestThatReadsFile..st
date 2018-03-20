test generation
generateTestThatReadsFile: aFileReference
	"generates a test method that parses aFileReference"

	| testName testKind method |
	testName := 'test' , aFileReference basename capitalized copyReplaceAll: '.grace' with: ''.
	testKind := 'complier source'.
	method := self fileTestMethodNamed: testName fromFile: aFileReference.
	self compileTestMethod: method inCategory: testKind
	