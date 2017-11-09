test generation
generateIntegrationTests
	"generates a test method for Grace file in minigrace"
	"self new generateIntegrationTests >>> 'done' "

	sourceFiles do: [ :each | self generateTestThatReadsFile: each ].
	^ 'done'
	
	