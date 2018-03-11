*Grace-Names
objectScopeFor: aReuseStatementNode
	"answer the scope referenced by aReuseStatementNode"
	^ self receiver scopeReferencedBy: self request
