tests
testTryCatchFinally
	self assert: ((nonEmptyDict at: 'try(_)catch(_)finally(_)') isKindOf: GraceSpecialControlStructure) 