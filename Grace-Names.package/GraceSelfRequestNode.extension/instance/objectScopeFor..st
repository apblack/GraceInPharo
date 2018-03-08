*Grace-Names
objectScopeFor: aNode
	self enclosingObject isModule ifFalse: [ 
		^ GraceReuseError 
				signal: 'Sorry, you can''t inherit from ' , self description
				node: aNode ].
	^ self request objectScopeFor: aNode
		