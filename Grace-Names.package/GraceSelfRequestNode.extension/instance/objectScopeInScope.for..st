*grace-names
objectScopeInScope: aScope for: aNode
	self enclosingObject isModule ifFalse: [ 
		^ GraceReuseError 
				signal: 'Sorry, you can''t inherit from ' , self description
				withTag: aNode ].
	^ self request objectScopeInScope: aScope for: aNode
		