*grace-names
objectScopeInScope: aScope 
	^ (aScope lookup: self requestedName ifAbsent: [ 
		^ GraceNamingError signal: 'I''m sorry, I don''t know what ' , self requestedName , ' means' 
							    withTag: self ]) attributeScope