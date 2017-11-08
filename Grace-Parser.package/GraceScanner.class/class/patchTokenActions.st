initialization
patchTokenActions
	| tokenActionsLiteral leftBraceId rightBraceId newMethod symbolNames newTokenActions |
	(GraceParser canUnderstand: #symbolNames) ifFalse: [ ^ self ]. 
		"this guard is here because when this code is first loaded, the gnerated method tokenActions will not yet exist"
	symbolNames := GraceParser new symbolNames.
	leftBraceId := symbolNames indexOf: '"{"'.
	rightBraceId := symbolNames indexOf: '"}"'.
	(self theNonMetaClass includesSelector: #tokenActions) ifFalse: [ ^ self ].
		"this guard is here because when this code is first loaded, the gnerated method tokenActions will not yet exist"
	tokenActionsLiteral := self new tokenActions.						"the literal array object"
	newTokenActions := tokenActionsLiteral copy.
	newTokenActions at: leftBraceId put: #leftBrace.						"modifies the copy"
	newTokenActions at: rightBraceId put: #rightBrace.					"modifies the copy"
	(newTokenActions = tokenActionsLiteral) ifTrue: [ ^ self ].			"return if the mods were already installed"
	newMethod := String streamContents: [ :s | 
		s << 'tokenActions' ; cr ; tab ; << '^ '; << newTokenActions printString ]. 
	self compile: newMethod classified: 'generated'
