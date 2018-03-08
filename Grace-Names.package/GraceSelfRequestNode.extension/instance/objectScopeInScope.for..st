*Grace-Names
objectScopeInScope: aScope for: aNode
	self enclosingObject isModule ifFalse: [ 
		^ GraceReuseError 
				signal: 'sorry, you can''t inherit from ' , self description
				node: aNode ].
	^ self request objectScopeInScope: aScope for: aNode
		