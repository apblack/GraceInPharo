tests
testIfThen
	self assert: ((nonEmptyDict at: 'if(_)then(_)') isKindOf: GraceSpecialControlStructure) 