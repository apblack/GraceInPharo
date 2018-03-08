error handling
initializerAndMarker: annotation on: aNode
	^ self signal: ('{1} with the annotation `{2}` is a marker declaration, and must not have an initialzation expression'
					format: { aNode description . annotation })
			 node: aNode