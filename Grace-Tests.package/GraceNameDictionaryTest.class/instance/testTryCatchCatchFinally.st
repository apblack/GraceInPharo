tests
testTryCatchCatchFinally
	self assert: ((nonEmptyDict at: 'try(_)catch(_)catch(_)finally(_)') isKindOf: GraceSpecialControlStructure)
	