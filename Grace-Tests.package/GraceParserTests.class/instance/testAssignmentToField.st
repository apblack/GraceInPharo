tests - indentation
testAssignmentToField
	"Check that the body of incSecret parses as an assignment" 
	| parseTree cls meth |
	parseTree := self good: #Module parse: 'class new {
           var secret := 0
           method incSecret { secret := secret + 1 }
}'.
	self assert: (cls := parseTree items first) isA: #ClassDeclaration.
	self assert: (meth := cls items second) isA: #MethodDeclaration.
	self assert: (meth items first) isA: #Assignment.