instance initialization
initializeFrom: aRange scope: aScope
	self assert: (aRange isKindOf: GraceRange).
	range := aRange.
	self assert: (aScope isKindOf: GraceScope).
	scope := aScope