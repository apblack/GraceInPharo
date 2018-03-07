error handling
bodyAndMarker: annotation on: aNode
	^ self signal: ('{1} with the annotation `{2}` is a marker declaration, and must not have a body'
					format: { aNode description . annotation })
			 withTag: aNode