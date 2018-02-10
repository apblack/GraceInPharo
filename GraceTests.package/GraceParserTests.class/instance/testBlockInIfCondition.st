tests - indentation
testBlockInIfCondition
	"A continued line starts a block.  This is motivated by formatting from ast.grace, around line 1066"

	self good: #Module parse: 'var p
if ((false != p.dtype) && {
    p.dtype.nameString != "Unknown" 
}) then {
    return true
}'