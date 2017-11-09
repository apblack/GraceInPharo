test generation
generateAllTests
	"generates a test method for each test in test Directory"

	testFiles do: [ :each | self generateTestFromFile: each ]
	
	