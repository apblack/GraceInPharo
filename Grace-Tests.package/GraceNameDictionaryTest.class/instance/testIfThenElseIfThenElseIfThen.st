tests
testIfThenElseIfThenElseIfThen
	self assert: ((nonEmptyDict at: 'if(_)then(_)elseif(_)then(_)elseif(_)then(_)') isKindOf: GraceSpecialControlStructure) 