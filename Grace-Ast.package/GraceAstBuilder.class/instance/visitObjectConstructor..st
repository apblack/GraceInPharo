visitation
visitObjectConstructor: anObjectCons
	^ GraceObjectConstructorAst
		from: anObjectCons range
		scope: anObjectCons scope 
		inherits: (self inheritanceOf: anObjectCons)
		uses: (GraceListAst from: 
					(anObjectCons items 
						select: [ :each | each isUseStatement ]
						thenCollect: [ :each | each acceptVisitor: self ]))
		items: (GraceListAst from: 
					(anObjectCons items 
						reject: [ :each | each isReuseStatement ]
						thenCollect: [ :each | each acceptVisitor: self ]))