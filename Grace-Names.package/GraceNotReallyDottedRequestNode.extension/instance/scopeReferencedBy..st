*Grace-Names
scopeReferencedBy: aRequestPart
	| rcvr |
	rcvr := self scope lookup: self receiverName ifAbsent: [ 
		^ GraceNamingError signal: 'I''m sorry, I don''t know what ' , self receiver name , ' means' 
							    node: self ].
	^ self request objectScopeInScope: rcvr attributeScope for: self
