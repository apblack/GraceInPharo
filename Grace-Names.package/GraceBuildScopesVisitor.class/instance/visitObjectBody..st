scope creation
visitObjectBody: anObjBody
	
	| isInTrait |
	isInTrait := anObjBody parent isTrait.
	isInTrait ifTrue: [ 
		anObjBody items do: [ :each |
			each isLegalInTrait ifFalse: [
				^ self traitConstructionError: each aKind , ' cannot appear in a trait'
					node: each
			]  
		] 
	].
	self visitChildren: anObjBody.
	^ anObjBody