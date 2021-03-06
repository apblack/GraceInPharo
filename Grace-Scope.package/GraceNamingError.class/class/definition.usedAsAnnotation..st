error handling
definition: aGraceMethod usedAsAnnotation: anAnnotationNode 
	| declaringModule location message |
	declaringModule := aGraceMethod definingParseNode moduleName.
	location := aGraceMethod definingParseNode range lineRangePrintString.
	(declaringModule = anAnnotationNode moduleName) ifFalse: [ 
		location := location , ' of module "' , declaringModule , '"'].
	message := anAnnotationNode requestedName , ', which is declared on ' , 
				  location , ', is not an annotation'.
	self signal: message node: anAnnotationNode