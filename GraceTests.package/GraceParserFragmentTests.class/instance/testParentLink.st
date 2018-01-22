tests-tree linkage
testParentLink
	"test that a parent link is established correctly"

	| result defDecl initializer |
	result := self good: #MethodDeclaration parse: 'method anySatisfies ( predicate:Block ) -> Boolean {
    // returns true iff one of my elements satisfies predicate
    def exemplar = self.detect ( predicate ) ifNone { return false }
    return true
}'.
	result checkParentLinks.
	self assert: result items size equals: 2.
	self assert: result items first isA: #DefDeclaration.
	self assert: result items second isA: #Return.
	defDecl := result items first.
	initializer := defDecl initializer.
	self assert: initializer parent == defDecl 
		  description: 'initializer''s parent is a defDecl, but its parent slot is ', 
					initializer parent printString
	
    