*Grace-Names
objectScopeFor: aReuseStatementNode
	"answer the scope referenced by aReuseStatementNode"
	| rcvr |
	rcvr := aReuseStatementNode scope lookupLocallyOrOutwards: self receiverName ifAbsent: [ 
		^ GraceNamingError signal: 'I''m sorry, I don''t know what ' , self receiver name , ' means' 
							    node: aReuseStatementNode ].
	^ self request objectScopeInScope: rcvr attributeScope for: aReuseStatementNode
		