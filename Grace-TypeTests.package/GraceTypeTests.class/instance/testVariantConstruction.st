tests
testVariantConstruction
	| module tV |
	module := self good: #Module parse: 'type V = A | B
type A = interface { a }
type B = interface { b }
'.
	tV := GraceBuildType from: module items first value.
	self assert: (tV isKindOf: GraceVariantType).
	self assert: tV typeName equals: 'A | B'.
	tV := module items first typeValue.	"Uses the same type builder as above, but now with the name V"
	self assert: tV typeName equals: 'V'.
	