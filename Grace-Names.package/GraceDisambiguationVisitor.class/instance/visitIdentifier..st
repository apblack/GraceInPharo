visit methods
visitIdentifier: anIdentifier
	"We may re-write this identifier into a OneselfRequest.  In this case, the 
	super-visitation will be on a different class of node."

	| possiblyRewrittenNode |
	possiblyRewrittenNode := GraceNodeRewriter rewriteIdentifier: anIdentifier.
	^ possiblyRewrittenNode isIdentifier ifTrue: [ 
		super visitIdentifier: possiblyRewrittenNode
	] ifFalse: [ 
		self acceptNode: possiblyRewrittenNode
	]