tests
testMethodVisibilities
	| result scope |
	result := self good: #Module parse: 'method inner {...}
method publicInner is public { ... }
method readableInner is readable { ... }
method confidentialMethod is confidential { ... }
'.
	scope := result scope.
	self assert: scope class equals: GraceModuleScope.
	self assert: 'inner' in: scope is: #('public' 'readable') 
													andIsNot: #('confidential' 'writable').
	self assert: 'publicInner' in: scope is: #('public' 'readable') 
													andIsNot: #('confidential' 'writable').
	self assert: 'readableInner' in: scope is: #('readable' 'public') 
													andIsNot: #('writable' 'confidential').
	self assert: 'confidentialMethod' in: scope is: #('confidential') 
													andIsNot: #('readable' 'writable' 'public')