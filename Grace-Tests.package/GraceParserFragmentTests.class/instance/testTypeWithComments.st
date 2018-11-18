tests-Types
testTypeWithComments
	self good: #ObjectItem as: #TypeDeclaration parse: 'type AstNode = interface {
    kind -> String
        // Used for pseudo-instanceof tests, and for printing
    register -> String
        // Used in the code generator to name the resulting object
    line -> Number
        // The source line the node came from; the first line is 1
    line:=(ln:Number)
    column -> Number
}'