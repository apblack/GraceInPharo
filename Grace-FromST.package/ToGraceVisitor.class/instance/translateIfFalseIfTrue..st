specialMessages
translateIfFalseIfTrue: aMessage
	| receiver condition trueBranch falseBranch |
	receiver := RBSelfNode new.
	condition := aMessage receiver.
	trueBranch := aMessage arguments first.
	falseBranch := aMessage arguments second.
	^ RBMessageNode receiver: receiver selector: #if:then:else: 
			arguments: { condition . falseBranch . trueBranch }