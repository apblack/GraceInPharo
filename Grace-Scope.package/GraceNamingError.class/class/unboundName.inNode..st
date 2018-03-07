error handling
unboundName: aName inNode: aNode 

	^ self 
		signal: 'I''m sorry, but the name ' , aName , ' does not exist in that scope'
		withTag: aNode 