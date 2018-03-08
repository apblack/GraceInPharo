*Grace-Names
objectScopeInScope: aScope for: aNode
	^ GraceReuseError 
			signal: 'sorry, you can''t inherit from ' , self description
			node: aNode