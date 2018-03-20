tests
testConformanceRecursiveWithResultNoTypeParameters
	| module tTB tBB |
	module := self good: #Module parse: 'type Block0 = interface { 
    apply(_) -> Done
}
type ToyBoolean = interface {
    ifTrue(_:Block0)ifFalse(_:Block0) -> Done 
    not -> ToyBoolean
}
type BetterBoolean = interface {
    ifTrue(_:Block0)ifFalse(_:Block0) -> Done
    not -> BetterBoolean
    and(_:ToyBoolean) -> BetterBoolean
}
'.
	tTB := GraceBuildType from: module items second.
	tBB := GraceBuildType from: module items third.
	self assert: (tBB conformsTo: tTB)
	