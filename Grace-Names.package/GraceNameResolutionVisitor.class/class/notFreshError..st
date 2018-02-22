error handling
notFreshError: aNode
	^ GraceReuseError 
		signal: 'this method can''t be reused, because it does not return a fresh object'
		withTag: aNode