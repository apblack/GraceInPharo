tests
testBlockWith2Params
	| blockNode |
	blockNode := self good: #Block parse: '{ first, second -> wombat }'.
	self assert: blockNode scope class equals: GraceBlockScope.
	self assert: (blockNode scope defines: 'first').
	self assert: (blockNode scope defines: 'second').