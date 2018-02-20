error handling
badExclusion: anExcludeNode
	^ self reuseError: 'can''t exclude ' , anExcludeNode declaredName , 
                    ' because it is not present in the object being reused'
			 node: anExcludeNode 