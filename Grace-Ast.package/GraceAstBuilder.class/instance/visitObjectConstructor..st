generated
visitObjectConstructor: anObjectCons
	^ GraceObjectConstructorAst
		from: anObjectCons range
		scope: anObjectCons scope 
		items: (GraceListAst from: (anObjectCons items collect: [ :each | each acceptVisitor: self ]))