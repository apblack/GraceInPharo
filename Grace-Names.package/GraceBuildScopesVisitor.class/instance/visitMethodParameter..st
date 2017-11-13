scope creation
visitMethodParameter: aMethodParameter
	aMethodParameter scope add: (GraceParameter fromParameter: aMethodParameter) 
									withName: aMethodParameter id name.
	self visitChildren: aMethodParameter.
	^ aMethodParameter