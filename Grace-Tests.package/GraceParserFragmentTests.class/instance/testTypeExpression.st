tests-Types
testTypeExpression
	self good: #Type as: #InterfaceLiteral parse: 
		'interface {
    push(item:ElementType) → Done
    pop → ElementType
    isEmpty -> Boolean
}'