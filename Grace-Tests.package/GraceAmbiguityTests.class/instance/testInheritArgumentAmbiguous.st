minigrace failing
testInheritArgumentAmbiguous
	"it's not clear what this would mean if it were allowed.  We can build the scope for class b,
	but we could never get an argument to supply to the run-time request to class x's builder function"
	self bad: #Module parse: 'class a {
    def y = 7
    class b {
        inherit x(y)
    }
}
class x(n) { 
    def y = 0
}'
