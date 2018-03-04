visit methods
visitTraitDeclaration: aTraitDeclaration
	aTraitDeclaration items do: [ :each | each isLegalInTrait ifFalse: [ 
			self malformedTraitContaining: each ] ].
	^ super visitTraitDeclaration: aTraitDeclaration