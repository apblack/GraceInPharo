specialMessages
translateToDo: aMessage
	| receiver |
	receiver :=  RBMessageNode 
							receiver: aMessage receiver 
							selector: #to: 
							arguments: { aMessage arguments first }.
	^ RBMessageNode 
			receiver: receiver selector: #do: 
			arguments: { aMessage arguments second }