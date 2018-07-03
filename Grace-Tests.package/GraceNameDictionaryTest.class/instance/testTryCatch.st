tests
testTryCatch
	self assert: ((nonEmptyDict at: 'try(_)catch(_)') isKindOf: GraceSpecialControlStructure) 