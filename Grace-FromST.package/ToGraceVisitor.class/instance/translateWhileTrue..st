specialMessages
translateWhileTrue: aMessage
	"deals with the variants with and without an argument"
	| receiver condition blockBody args |
	receiver := RBSelfNode new.
	condition := aMessage receiver.
	args := aMessage arguments.
	blockBody := args 
		ifEmpty: [ RBBlockNode body: (RBSequenceNode statements: #()) ] 
		ifNotEmpty: [ args first ].
	^ RBMessageNode receiver: receiver selector: #while:do: 
			arguments: { condition . blockBody }