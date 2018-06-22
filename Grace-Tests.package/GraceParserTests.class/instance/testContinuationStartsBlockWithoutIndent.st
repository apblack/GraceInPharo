tests - indentation
testContinuationStartsBlockWithoutIndent
	"A continued line starts a block.  The block must be indented more than the (start of the) continued line"

	self bad: #Module parse: '
method formatttingTest -> Boolean {
    var dtype
    if ((false != dtype) &&
          { dtype.nameString != "Unknown" }) then {
    return true
    }
    return false
}'
