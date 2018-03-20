tests-Types
testTypeExpressionCloseBraceOnSameLine
	self good: #Type as: #Interface parse: 
		'interface {
    push(item:ElementType) → Done
    pop → ElementType
    isEmpty -> Boolean}'