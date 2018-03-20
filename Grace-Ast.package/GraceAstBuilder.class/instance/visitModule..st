generated
visitModule: aModule
	^ GraceModuleAst 
		from: aModule range 
		dialect: (aModule dialect acceptVisitor: self) 
		items: (GraceListAst from: (aModule items collect: [ :each | each acceptVisitor: self ]))
	