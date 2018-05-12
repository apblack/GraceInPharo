visit methods
visitReturn: aReturn
	| method |
	method := aReturn enclosingMethod.
	(method == GraceNoParentNode instance) ifTrue: [ 
		GraceSyntaxError 
			signal: 'a return statement is meaningful only inside a method'
			node: aReturn ].
	aReturn declaredType: method returnType.
	^ super visitReturn: aReturn