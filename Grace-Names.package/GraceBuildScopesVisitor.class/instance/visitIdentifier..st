scope creation
visitIdentifier: anIdentifier
	(anIdentifier isApplication and: [ anIdentifier isAnonymous ]) ifTrue: [ 
		self underscoreError: '`_` cannot be used in an expression' node: anIdentifier]
	