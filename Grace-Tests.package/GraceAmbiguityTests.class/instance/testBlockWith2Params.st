tests
testBlockWith2Params
	| blockNode module |
	module := self good: #Module parse: 'method wombat { ... }
{ first, second -> wombat }'.
	blockNode := module items second.
	self assert: blockNode isA: #Block.
	self assert: blockNode scope class equals: GraceBlockScope.
	self assert: (blockNode scope definesLocally: 'first').
	self assert: (blockNode scope definesLocally: 'second').