error handling
annotation: a1 conflictsWith: a2 in: anAnnotationNode
	^ self signal: ('the annotations {1} and {2} conflict; choose one or the other' 
						format: {  a1 . a2 })
			 node: anAnnotationNode