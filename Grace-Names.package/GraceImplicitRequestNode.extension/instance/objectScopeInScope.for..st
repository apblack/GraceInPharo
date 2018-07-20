*Grace-Names
objectScopeInScope: aScope for: aNode
	| rewrittenNode |
	rewrittenNode := GraceNodeRewriter rewriteImplicitRequest: self.
	rewrittenNode == self ifTrue: [ 
		^ self error: 'this implicit request node should have been replaced by an explicit request node'
	]. 
	^ rewrittenNode objectScopeInScope: aScope for: aNode