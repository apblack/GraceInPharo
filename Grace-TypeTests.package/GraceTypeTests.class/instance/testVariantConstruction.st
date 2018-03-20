tests
testVariantConstruction
	| module tV |
	module := self good: #Module parse: 'type V = A | B
type A = interface { a }
type B = interface { b }
'.
	tV := GraceBuildType from: module items first.
	self assert: (tV isKindOf: GraceVariantType).
	self assert: tV typeName equals: 'V'.
	