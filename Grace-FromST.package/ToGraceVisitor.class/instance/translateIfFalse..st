specialMessages
translateIfFalse: aMessage
	| receiver condition falseBranch negatedCondition |
	receiver := RBSelfNode new.
	condition := aMessage receiver.
	negatedCondition := RBMessageNode receiver: condition selector: #not.
	falseBranch := aMessage arguments first.
	^ RBMessageNode receiver: receiver selector: #if:then: 
			arguments: { negatedCondition . falseBranch }