tests - comments
testEndOfLineComment
	| module blockItems |
	module := self good: #Module as: #Module parse: 'def x = 1     // this defines x
def y = 2      // this defines y
print (x + y)'.
	blockItems := module items.
	self assert: blockItems size equals: 3.
	self assert: blockItems first isA: #DefDeclaration.
	self assert: blockItems second isA: #DefDeclaration.
	self assert: blockItems third isA: #ImplicitRequest.