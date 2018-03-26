generated
visitDialect: aDialect
	^ GraceDialectAst 
		from: aDialect range 
		scope: aDialect scope
		dialect: (aDialect name) 
	