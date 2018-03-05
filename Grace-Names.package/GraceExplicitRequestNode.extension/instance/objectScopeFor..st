*Grace-Names
objectScopeFor: aNode
	| rcvr |
	rcvr := aNode scope lookupLocallyOrOutwards: self receiverName ifAbsent: [ 
		^ GraceNamingError signal: 'I''m sorry, I don''t know what ' , self receiver name , ' means' 
							    withTag: aNode ].
	^ self request objectScopeInScope: rcvr attributeScope for: aNode
		