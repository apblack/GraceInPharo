accessing inner scopes
objectScopeInScope: aScope 
	^ (aScope lookup: self requestedName ifAbsent: [ 
		^ GraceNamingError signal: 'I''m sorry, I don''t know what ' , self receiver name , ' means' 
							    withTag: self ]) attributeScope