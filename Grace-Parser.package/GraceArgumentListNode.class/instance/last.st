accessing
last
	^ rightParenToken ifNil: [ args last last ] ifNotNil: [ rightParenToken last ]