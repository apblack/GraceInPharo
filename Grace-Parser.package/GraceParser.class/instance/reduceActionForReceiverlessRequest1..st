generated-reduction actions
reduceActionForReceiverlessRequest1: nodes
	| result |
	result := GraceReceiverlessRequestNode new.
	result request: (nodes at: 1).
	^ result