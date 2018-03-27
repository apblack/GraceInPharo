tests
testMarkerMethod
	| result def |
	result := self good: #Module parse: 'method size is abstract, confidential
'.
	self assert: result scope class equals: GraceModuleScope.
	self assert: (result scope defines: 'size').
	self assert: (result scope lookupLocally: 'size' 
			ifAbsent: [ ^ self fail: 'size is not defined' ]) isMarker description: 'size is not a marker definition'.
	def := result items first.
	self assert: def isA: #MethodDecl.
	self assert: (def annotationNames includes: 'abstract') description: 'size is not annotated with required'.
	self assert: (def annotationNames includes: 'confidential') description: 'size is not annotated with confidential'
	