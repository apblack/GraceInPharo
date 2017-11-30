accessing
topParent
	| current |
	current := self.
	[ current hasParent ] whileTrue: [ current := current parent ].
	^ current