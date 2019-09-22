specialMessages
translateValue: aMessage
	"deals with the variants with 0, 1 and several arguments"
	| sel |
	((aMessage receiver name includesSubstring: 'Block') not 
					and: [ aMessage arguments isEmpty ]) ifTrue: [ 
		^ aMessage ]. 	"quick return for #value unrelated to blocks."
	sel := aMessage selector copyReplaceAll: 'value' with: 'apply'.
	^ RBMessageNode receiver: aMessage receiver selector: sel arguments: aMessage arguments
	