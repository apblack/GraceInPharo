specialMessages
translateWhileFalse: aMessage
	"deals with the variants with and without an argument"
	| receiver condition blockBody negatedCondition args originalReceiver conditionBlock |
	receiver := RBSelfNode new.
	args := aMessage arguments.
	originalReceiver := aMessage receiver.
	(originalReceiver isBlock and: [originalReceiver body isSequence]) ifFalse: [ ^aMessage ]. "too complicated for me"
	blockBody:= originalReceiver copy. 
	condition := blockBody statements removeLast.
	negatedCondition := RBMessageNode receiver: condition selector: #not.
	^ args ifEmpty: [ 
		" #whileFalse ".
		conditionBlock := RBBlockNode body: (RBSequenceNode statements: { negatedCondition }).
		RBMessageNode receiver: receiver selector: #do:while:  arguments: { blockBody . conditionBlock }
	] ifNotEmpty: [
		" whileFalse: "
		blockBody statements addLast: negatedCondition.
		RBMessageNode receiver: receiver selector: #while:do:  arguments: { blockBody . args first }	]