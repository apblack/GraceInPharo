initialization
patchTokenActions
	| tokenActionsLiteral newTokenActions |
	(GraceParser canUnderstand: #symbolNames) ifFalse: [ ^ self ]. 
		"this guard is here because when this code is first loaded, the generated method symbolNames will not yet exist"
	symbolNames := GraceParser new symbolNames.
	tokenActionsLiteral := self new tokenActions.						"the old literal array object"
	newTokenActions := tokenActionsLiteral copy.
	self patch: '"{"' withAction: #leftBrace inArray: newTokenActions.
	self patch: '"}"' withAction: #rightBrace inArray: newTokenActions.
	self patch: '":="' withAction: #assignmentSymbol inArray: newTokenActions.
	self patch: '"="' withAction: #equals inArray: newTokenActions.
	self patchReservedWordsWithAction: #reservedWord inArray: newTokenActions.
	
	(newTokenActions = tokenActionsLiteral) ifFalse: [ 
		self installNewTokenActionsArray: newTokenActions.
	]
