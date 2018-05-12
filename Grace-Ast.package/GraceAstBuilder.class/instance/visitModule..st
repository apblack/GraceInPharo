visitation
visitModule: aModule

	^ GraceModuleAst
		from: aModule range
		scope: aModule scope
		dialect: (aModule dialect 
						ifNil: [ GraceDialectAst 	
										from: GraceRange empty 
										scope: aModule scope 
										dialect: 'standardGrace' ] 
						ifNotNil: [ :d | d acceptVisitor: self ] )
		inherits: (self inheritanceOf: aModule)
		uses: (GraceListAst from: 
					(aModule items 
						select: [ :each | each isUseStatement ]
						thenCollect: [ :each | each acceptVisitor: self ]))
		items: (GraceListAst from: 
					(aModule items 
						reject: [ :each | each isReuseStatement ]
						thenCollect: [ :each | each acceptVisitor: self ]))
	