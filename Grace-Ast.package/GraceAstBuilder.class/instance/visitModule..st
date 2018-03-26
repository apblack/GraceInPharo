generated
visitModule: aModule
	^ GraceModuleAst 
		from: aModule 
		scope: aModule scope 
		dialect: (aModule dialect ifNil: [
				GraceDialectAst 	
						from: GraceRange empty 
						scope: aModule scope 
						dialect: 'standardGrace' ] ifNotNil: [ :d | 
				d acceptVisitor: self ]) 
		items: (GraceListAst from: (aModule items collect: [ :each | each acceptVisitor: self ]))
	