tests
testShadowingTypeParameterFail
	self bad: #Module parse: '
type Collection⟦T⟧ = interface {
    do(_:Procedure1⟦T⟧) -> Done
}
var T    // this declaration of T makes the use of T as a type parameter illegal.
'