error handling
definition: aGraceMethod usedAsAnnotation: anAnnotationNode 
	| declaringModule location message |
	declaringModule := aGraceMethod definingNode moduleName.
	location := aGraceMethod definingNode range lineRangePrintString.
	(declaringModule = anAnnotationNode moduleName) ifFalse: [ 
		location := location , ' of module "' , declaringModule , '"'].
	message := anAnnotationNode requestedName , ', which is declared on ' , 
				  location , ', is not an annotation'.
	self signal: message withTag: anAnnotationNode