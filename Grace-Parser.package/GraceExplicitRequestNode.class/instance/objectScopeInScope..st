accessing inner scopes
objectScopeInScope: aScope 
	| rcvr |
	rcvr := aScope lookup: self receiver name ifAbsent: [ 
		^ GraceNamingError signal: 'I''m sorry, I don''t know what ' , self receiver name , ' means' 
							    withTag: self ].
	^ self request objectScopeInScope: rcvr attributeScope
		