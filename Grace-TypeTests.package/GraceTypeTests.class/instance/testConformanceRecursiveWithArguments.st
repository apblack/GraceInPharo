tests
testConformanceRecursiveWithArguments
	| module tTB tBB |
	module := self good: #Module parse: 'type ToyBoolean = interface {
    ifTrue(_:Procedure0)ifFalse(_:Procedure0) -> Done 
    not -> ToyBoolean
    and(_:ToyBoolean) -> ToyBoolean
}
type BetterBoolean = interface {
    ifTrue(_:Procedure0)ifFalse(_:Procedure0) -> Done
    not -> BetterBoolean
    and(_:ToyBoolean) -> BetterBoolean
    or(_:ToyBoolean) -> BetterBoolean
}
'.
	tTB := GraceBuildType from: module items first.
	tBB := GraceBuildType from: module items second.
	self assert: (tBB conformsTo: tTB)
	