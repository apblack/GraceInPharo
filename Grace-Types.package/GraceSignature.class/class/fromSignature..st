instance creation
fromSignature: aNode
	| answer |
	answer := self new fromSignatureNode: aNode.
	self assert: (answer result isNotNil).
	^ answer