instance creation
fromParseTreeNode: aNode
	| answer |
	answer := self new initializeFromNode: aNode.
	self assert: (answer result isNotNil).
	^ answer