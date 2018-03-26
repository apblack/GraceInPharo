generated
visitObjectConstructor: anObjectCons
	^ GraceModuleAst 
		from: anObjectCons 
		scope: anObjectCons scope 
		items: (GraceListAst from: (anObjectCons items collect: [ :each | each acceptVisitor: self ]))