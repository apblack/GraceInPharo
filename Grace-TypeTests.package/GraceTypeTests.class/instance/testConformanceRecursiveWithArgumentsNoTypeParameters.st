tests
testConformanceRecursiveWithArgumentsNoTypeParameters
	| module tTB tBB |
	module := self good: #Module parse: 'type Block0 = interface { 
    apply(_) -> Done
}
type ToyBoolean = interface {
    ifTrue(_:Block0)ifFalse(_:Block0) -> Done 
    not -> ToyBoolean
    and(_:ToyBoolean) -> ToyBoolean
}
type BetterBoolean = interface {
    ifTrue(_:Block0)ifFalse(_:Block0) -> Done
    not -> BetterBoolean
    and(_:ToyBoolean) -> BetterBoolean
    or(_:ToyBoolean) -> BetterBoolean
}
'.
	tTB := GraceBuildType from: module items second.
	self assert: tTB typeName equals: 'ToyBoolean'.
	tBB := GraceBuildType from: module items third.
	self assert: tBB typeName equals: 'BetterBoolean'.
	self assert: (tBB conformsTo: tTB)
	