visitation
visitBlock: aBlock
	^ GraceBlockAst 
		from: aBlock range
		scope: aBlock scope 
		parameters: (GraceListAst from: (aBlock parameters collect: [ :each | each acceptVisitor: self ]))
		items: (GraceListAst from: (aBlock items collect: [ :each | each acceptVisitor: self ]))