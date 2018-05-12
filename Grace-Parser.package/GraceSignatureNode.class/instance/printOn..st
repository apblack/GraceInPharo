printing
printOn: aStream
	aStream << self nodeKind.
	header declaredName ifNotNil: [ :nm |  aStream << '(' << nm << ')' ]