specialMessages
translateIfTrue: aMessage
	| receiver condition trueBranch falseBranch |
	receiver := RBSelfNode new.
	condition := aMessage receiver.
	trueBranch := aMessage arguments first.
	^ RBMessageNode receiver: receiver selector: #if:then: 
			arguments: { condition . trueBranch }