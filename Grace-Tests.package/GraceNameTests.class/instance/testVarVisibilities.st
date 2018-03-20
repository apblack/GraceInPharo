tests
testVarVisibilities
	| result scope |
	result := self good: #Module parse: 'var inner := list.with(1, 2, 3)
var publicInner is public := list.empty
var readableInner is readable := list.with("a", "b", "c")
var writableInner is writable := list.empty
'.
	scope := result scope.
	self assert: scope class equals: GraceModuleScope.
	self assert: 'inner' in: scope is: #('confidential') 
													andIsNot: #('readable' 'writable' 'public').
	self assert: 'publicInner' in: scope is: #('public' 'readable' 'writable') 
													andIsNot: #('confidential').
	self assert: 'readableInner' in: scope is: #('readable') 
													andIsNot: #('writable' 'confidential' 'public').
	self assert: 'writableInner' in: scope is: #('writable') 
													andIsNot: #('readable' 'confidential' 'public')