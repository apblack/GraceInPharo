tests
testBlockWithNewlineBeforeParams
	"this layout appears in test003"
	self good: #Block parse: '{ 
        e : Exception ->
        out "OK."
        count := count + 1
}'