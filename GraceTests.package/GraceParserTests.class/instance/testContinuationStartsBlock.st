tests-indentation
testContinuationStartsBlock
	"A continued line starts a block.  This is motivated by formatting from ast.grace, around line 1066"

	self good: #Module parse: 'var dtype
if ((false != dtype) &&
         { dtype.nameString != "Unknown" }) then {
    return true
}'