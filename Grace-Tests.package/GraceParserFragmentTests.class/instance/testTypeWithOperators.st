tests-Types
testTypeWithOperators
	self good: #ObjectItem as: #TypeDeclaration parse: 
		'type Position = interface {
    line -> Number
    column -> Number
    >(other)  -> Boolean
    ≥(other) -> Boolean
    ==(other) -> Boolean
    <(other) -> Boolean
    ≤(other) -> Boolean
}'