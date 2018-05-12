tests
testAssignmentToField
	"Override parser test, because the class is represented as a method.
	Also check that assignment has been re-written into a request" 
	| ast cls meth obj |
	ast := self good: #Module parse: 'class new {
           var secret := 0
           method incSecret { secret := secret + 1 }
}'.
	self assert: (cls := ast items first) isA: #MethodDecl.
	self assert: (obj := cls rhs first) isA: #ObjectConstructor.
	self assert: (obj items first) isA: #VariableDecl.
	self assert: (obj items first isVar) description: obj items first printString , ' is not a `var`'.
	self assert: (meth := obj items second) isA: #MethodDecl.
	self assert: (meth rhs first) isA: #Request.
	self assert: (meth rhs first receiver) isA: #Oneself.
	self assert: (meth rhs first receiver objectsOut) equals: 0.