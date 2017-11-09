tests-Types
testTypeExpressionCloseBraceOnSameLine
	self good: #Type as: #Type parse: 
		'interface {
    push(item:ElementType) → Done
    pop → ElementType
    isEmpty -> Boolean}'