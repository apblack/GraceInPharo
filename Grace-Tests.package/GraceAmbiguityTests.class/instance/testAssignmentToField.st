tests
testAssignmentToField
	"Parser Tests ensure that the body of incSecret parses as an assignment.  Now check taht it has been re-written into a request" 
	| parseTree cls meth |
	parseTree := self good: #Module parse: 'class new {
           var secret := 0
           method incSecret { secret := secret + 1 }
}'.
	self assert: (cls := parseTree items first) isA: #ClassDeclaration.
	self assert: (meth := cls items second) isA: #MethodDeclaration.
	self assert: (meth items first) isA: #SelfRequest.