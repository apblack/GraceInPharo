generated
visitBlock: aBlock
	^ GraceBlockAst 
		from: aBlock range
		scope: aBlock scope 
		parameters: (aBlock parameters collect: [ :each | each acceptVisitor: self ])
		items: (GraceListAst from: (aBlock items collect: [ :each | each acceptVisitor: self ]))
	