scope creation
visitMethodParameter: aMethodParameter
	self halt.
	aMethodParameter scope add: (GraceParameter fromParseTreeNode: aMethodParameter) 
									withName: aMethodParameter id name.
	self visitChildren: aMethodParameter.
	^ aMethodParameter