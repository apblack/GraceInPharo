visit methods
visitTraitDeclaration: aTraitDeclaration
	aTraitDeclaration items do: [ :each | each isLegalInTrait ifFalse: [ 
			self reuseError: each description , ' is not allowed in a trait' node: each ] ].
	^ super visitTraitDeclaration: aTraitDeclaration