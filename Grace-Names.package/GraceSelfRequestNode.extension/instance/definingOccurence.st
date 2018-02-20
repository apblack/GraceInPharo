*grace-names
definingOccurence
	^ self scope lookupLocallyOrReused: self requestedName ifAbsent: [ 
		GraceNamingError signal: 'the name ', self requestedName , ' is not defined in this object' withTag: self  ]