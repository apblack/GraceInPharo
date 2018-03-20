tests
testNonConformanceNoSelf
	| module tTB tBB |
	module := self good: #Module parse: 'type ToyBoolean = interface {
    ifTrue(_:Procedure0)ifFalse(_:Procedure0) -> Done 
}
type BetterBoolean = interface {
    ifTrue(_:Procedure0)ifFalse(_:Procedure0) -> Done
    not -> BetterBoolean
}
'.
	tTB := GraceBuildType from: module items first.
	tBB := GraceBuildType from: module items second.
	self deny: (tTB conformsTo: tBB)
	