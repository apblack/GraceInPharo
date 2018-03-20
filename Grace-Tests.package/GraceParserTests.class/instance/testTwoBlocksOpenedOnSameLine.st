tests - indentation
testTwoBlocksOpenedOnSameLine
	"This layout appears in test165.
	I'm not clear if this is good or bad."
	self bad: #Module parse: 'assert {vowels4.indexOf "iou" startingAt 22 ifAbsent {
                ProgrammingError.raise "not found" 
}} shouldRaise (ProgrammingError)'