tests-Types
testInterfaceWithNestedTypes
	| iLit |
	iLit := self bad: #Type parse: 
		'interface {
        type T = Number
        foo
        bar -> String
        type U = String
}'.
	