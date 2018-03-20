tests
testConformanceNoSelfNoTypeParameters
	| module tTB tBB |
	module := self good: #Module parse: 'type ToyBoolean = interface {
    ifTrue(_:Done)ifFalse(_:Done) -> Done 
}
type BetterBoolean = interface {
    ifTrue(_:Done)ifFalse(_:Done) -> Done
    not -> BetterBoolean
}
'.
	tTB := GraceBuildType from: module items first.
	tBB := GraceBuildType from: module items second.
	self assert: (tBB conformsTo: tTB)
	