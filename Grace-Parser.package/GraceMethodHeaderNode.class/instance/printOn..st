printing
printOn: aStream
	aStream << self nodeKind.
	self declaredName ifNotNil: [  :nm | aStream << '(' << nm << ')' ]