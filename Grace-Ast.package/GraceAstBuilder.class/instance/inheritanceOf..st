inheritance
inheritanceOf: anObjectCons
	| inheritStatement |
	inheritStatement := anObjectCons items detect: [ :each | each isInheritStatement ] ifNone: [ 
		anObjectCons isInIntrinsicModule 
			ifTrue: [ ^ GraceNullAst new ]
			ifFalse: [ ^ GraceReuseAst 
								from: GraceRange empty 
								scope: anObjectCons scope 
								superExpression: GraceConstantAst graceObject
								alias: GraceListAst empty
								exclude: GraceListAst empty ] 
	].
	^ inheritStatement acceptVisitor: self
			