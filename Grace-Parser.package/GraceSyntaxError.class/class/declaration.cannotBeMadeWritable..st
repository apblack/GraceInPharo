error messages
declaration: aDeclaration cannotBeMadeWritable: anAnnotation
	^ self signal: aDeclaration description , ' cannot be made writable' node: anAnnotation