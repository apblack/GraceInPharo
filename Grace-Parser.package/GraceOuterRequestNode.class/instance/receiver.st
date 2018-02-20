accessing
receiver
	| node |
	node := self.
	outerDotTokens do: [ :_ |  node := node enclosingObject ].
	^ node