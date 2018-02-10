accessing
attributeScope
	^ attributeScope ifNil: [ GraceCompilationError signal: 'attributeScope of a ' , self className , ' is not defined'  ]