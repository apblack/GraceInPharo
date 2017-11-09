tests-Types
testTypeExpression
	self good: #Type as: #Type parse: 
		'interface {
    push(item:ElementType) → Done
    pop → ElementType
    isEmpty -> Boolean
}'