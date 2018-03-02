visit methods
visitIdentifier: anIdentifier
	anIdentifier isApplication
		ifTrue:
			[ self rewriteIdentifier: anIdentifier ].
	^ super visitIdentifier: anIdentifier