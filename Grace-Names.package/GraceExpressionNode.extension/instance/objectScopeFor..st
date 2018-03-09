*Grace-Names
objectScopeFor: aNode
	"This method will be overridden in all of my subclases for which it makes sense to inherit"
	^ GraceReuseError 
			signal: 'sorry, you can''t inherit from ' , self description
			node: aNode