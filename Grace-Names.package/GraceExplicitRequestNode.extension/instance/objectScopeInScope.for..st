*grace-names
objectScopeInScope: aScope for: aNode
	| rcvr |
	rcvr := aScope lookup: self receiverName ifAbsent: [ 
		^ GraceNamingError signal: 'I''m sorry, I don''t know what ' , self receiver name , ' means' 
							    withTag: aNode ].
	^ self request objectScopeInScope: rcvr attributeScope for: aNode
		