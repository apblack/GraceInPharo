visit methods
visitIdentifier: anIdentifier
	"We may re-write this identiifer into a oneselfRequest.  In this case, the 
	super-visitation will be on a different class of node."

	| possiblyRewrittenNode |
	possiblyRewrittenNode := anIdentifier isApplication ifTrue: [ 
		GraceNodeRewriter rewriteIdentifier: anIdentifier
	] ifFalse: [
		anIdentifier
	].
	possiblyRewrittenNode isIdentifier ifTrue: [ 
		super visitIdentifier: possiblyRewrittenNode
	] ifFalse: [ 
		super acceptNode: possiblyRewrittenNode
	]