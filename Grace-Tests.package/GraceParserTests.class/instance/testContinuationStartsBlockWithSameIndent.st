tests - indentation
testContinuationStartsBlockWithSameIndent
	"A continued line starts a block.  The block has the same indentation as the continuation"

	self good: #Module parse: '
method formatttingTest -> Boolean {
    var dtype
    if ((false != dtype) &&
          { dtype.nameString != "Unknown" }) then {
          return true
    }
    return false
}'
