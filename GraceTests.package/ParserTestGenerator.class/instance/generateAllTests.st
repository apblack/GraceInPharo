test generation
generateAllTests
	"generates a test method for each test in test Directory"

	inputFileRefs do: [ :each | self generateTestFromFile: each ]
	
	