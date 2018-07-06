tests
testIfThenElseIfElse
	self assert: ((nonEmptyDict at: 'if(_)then(_)elseif(_)then(_)else(_)') isKindOf: GraceSpecialControlStructure) 