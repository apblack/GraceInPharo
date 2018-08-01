tests
testMethodWithTwoParameters
	| output |
	output := 'method add (aVariable) withName (aName) {
    def priorDeclaration = names.at (aName) ifAbsent {
        names.at (aName) put (aVariable)
        return aVariable
    }
    return redeclarationError ("sorry, you can''t declare `{1}` as a {2}, because it''s already declared as a {3} on {4}, which is in the same scope; use a different name".format [aName, aVariable.kind, priorDeclaration.kind, priorDeclaration.rangeLongPrintString]) variable (aVariable)
}
'.
	self assertMethod: GraceScope >> #add:withName: inGraceIs: output