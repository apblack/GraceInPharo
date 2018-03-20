tests-Declarations
testTypeWithOperationLiteral
	self good: #Declaration as: #TypeDeclaration parse: 
		'type X = Object & interface {
    x -> X
    y(_) -> Unknown
}'