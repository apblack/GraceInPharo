tests
testDefVisibilities
	| result scope |
	result := self good: #Module parse: 'def inner = list.with(1, 2, 3)
def publicInner is public = list.empty
def readableInner is readable = list.with("a", "b", "c")
'.
	scope := result scope.
	self assert: scope class equals: GraceModuleScope.
	self assert: 'inner' in: scope is: #('confidential') 
													andIsNot: #('readable' 'writable' 'public').
	self assert: 'publicInner' in: scope is: #('public' 'readable') 
													andIsNot: #('writable' 'confidential').
	self assert: 'readableInner' in: scope is: #('public' 'readable') 
													andIsNot: #('writable' 'confidential')