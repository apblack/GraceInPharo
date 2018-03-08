*Grace-Names
objectScopeInScope: aScope for: aNode
	^ GraceReuseError 
			signal: 'Sorry, you can''t inherit from ' , self description
			node: aNode