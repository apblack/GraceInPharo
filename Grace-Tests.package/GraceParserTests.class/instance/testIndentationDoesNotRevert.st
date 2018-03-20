tests - indentation
testIndentationDoesNotRevert
	"This layout appears in test150.
	The newline after the return might cause the whole object  to be treated as a continuation line.
	In that case, there is no separator between the `:=0` and the `method` reserved word."
	self bad: #Module parse: 'def output = input.sortedBy {l, r ->
                if (l == r) then {0}
                    elseif {l < r} then {1}
                    else {-1}
                }'