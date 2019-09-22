tests
testEqualityMethod
	self assertMethod: GraceScope >> #= inGraceIs:'method == (other) {
    if ((class == other.class).not) then {
        return false
    }
    return ((localNames.keys.sort == other.localNames.keys.sort) && {
        (reusedNames.keys.sort == other.reusedNames.keys.sort)
    })
}
' 