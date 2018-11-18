tests-Declarations
testTypeWithOperationLiteral
	self good: #ObjectItem as: #TypeDeclaration parse: 
		'type X = Object & interface {
    x -> X
    y(_) -> Unknown
}'