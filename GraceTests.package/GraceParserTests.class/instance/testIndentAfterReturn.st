tests - indentation
testIndentAfterReturn
	"This layout is based on code from test002.
	The indent after the return might cause the whole object  to be treated as a continuation line.
	In that case, there is no separator between the `:=0` and the `method` reserved word.
	Instead, the open brace after object terminates the continuation."
	self good: #Module parse: 'method new {
        return 
            object {
                   var secret := 0
                   method incSecret { secret := secret + 1 }
        }
}'