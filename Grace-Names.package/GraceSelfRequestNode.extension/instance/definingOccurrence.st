*grace-names
definingOccurrence
	^ self scope lookupLocallyOrReused: self requestedName ifAbsent: [ 
		GraceNamingError signal: 'the name ', self requestedName , ' is not defined in this object' node: self  ]