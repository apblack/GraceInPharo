tests
testNoShadowingType
	self good: #Module parse: '
type Collection⟦T⟧ = interface {
    do(_:Procedure1⟦T⟧) -> Done
}
method do(_) {  ... }   // this declaration of do(_) has no effect on ths use of do(_) in the interface.
'