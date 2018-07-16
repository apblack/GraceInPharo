tests - indentation
testContinuationInWhile
	"Motivated by code from GradualTypesND"

	| result methodBody |
	result := self good: #Module parse: 'object {
    method fromGctLine (line : String) -> MethodType {
        //TODO: Generics are currently skipped over and ignored entirely.
        // string specifying method being imported
        var mstr: String
        var fst: Number
        var lst: Number
        while {(mstr.at (lst) != ")") && (mstr.at (lst) != ",")
            && (mstr.at(lst) != "[[")} do {
            lst := lst + 1
        }
    }
}'.
	methodBody := result items first items first items.
	methodBody inspect.
	self assert: methodBody size equals: 4.
	self assert: methodBody fourth isA: #ImplicitRequest