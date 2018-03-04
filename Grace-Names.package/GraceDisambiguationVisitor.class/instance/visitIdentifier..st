visit methods
visitIdentifier: anIdentifier
	anIdentifier isApplication
		ifTrue:
			[ GraceNodeRewriter rewriteIdentifier: anIdentifier ].
	^ super visitIdentifier: anIdentifier