accessing
target
	| targetNode |
	targetNode := self enclosingObject.
	outerDotTokens size timesRepeat: [ targetNode := targetNode enclosingObject ].
	^ targetNode