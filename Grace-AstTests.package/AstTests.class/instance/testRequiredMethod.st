tests
testRequiredMethod
	| result def |
	result := self good: #Module parse: 'method size is required
'.
	self assert: result scope class equals: GraceModuleScope.
	self assert: (result scope defines: 'size').
	self assert: (result scope lookupLocally: 'size' 
			ifAbsent: [ ^ self fail: 'size is not defined' ]) isMarker description: 'size is not a marker definition'.
	def := result items first.
	self assert: def isA: #AttributeDeclaration.
	self assert: (def annotationNames includes: 'required') description: 'size is not annotated with required'
	