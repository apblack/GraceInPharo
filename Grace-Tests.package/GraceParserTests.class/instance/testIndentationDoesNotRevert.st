tests - indentation
testIndentationDoesNotRevert
	"The right brace that closes the block should be at the same indentation as the line that 
	contains the left brace that opens the block."
	self bad: #Module parse: 'def output = input.sortedBy {l, r ->
                if (l == r) then {0}
                    elseif {l < r} then {1}
                    else {-1}
                }'