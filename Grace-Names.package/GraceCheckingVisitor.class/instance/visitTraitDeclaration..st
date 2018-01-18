visit methods
visitTraitDeclaration: aTraitDeclaration
	aTraitDeclaration items do: [ :each | each isLegalInTrait ifFalse: [ 
			self checkerError: each description , ' is not allowed in a trait' node: each ] ].
	^ super visitTraitDeclaration: aTraitDeclaration