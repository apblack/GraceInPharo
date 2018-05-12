tests
testMarkerDef
	| result def |
	result := self good: #Module parse: 'def final is annotation
'.
	self assert: result scope class equals: GraceModuleScope.
	self assert: (result scope defines: 'final').
	self assert: (result scope lookupLocally: 'final' 
			ifAbsent: [ ^ self fail: 'final is not defined' ]) isMarker description: 'final is not a marker definition'.
	def := result items first.
	self assert: def isA: #VariableDecl.
	self assert: def annotationNames equals: (OrderedCollection with: 'annotation')	
	