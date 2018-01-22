operator precedence
implementPrecedenceForPlusAndTimes: binaryRequest
	| operands operators ix newNode numberOfOperatorsToPop newOperands newOperators |
	operands := OrderedCollection with: binaryRequest receiver.
	operators := OrderedCollection new.
	"self assert: [ binaryRequest ops size = binaryRequest args size]"
	ix := 1.
	[ 
		[ 	operators addLast: (binaryRequest ops at: ix).
			operands addLast: (binaryRequest args at: ix).
			ix := ix + 1.
			ix <= binaryRequest ops size
				and: [ self operator: (binaryRequest ops at: ix) isOfGreaterOrEqualPrecedence: operators last ] 		] whileTrue.
		newNode := GraceBinaryRequestNode new.
		numberOfOperatorsToPop := self operatorsToBePoppedFrom: operators.
		newOperands := operands removeLast: numberOfOperatorsToPop + 1.
		newOperators := operators removeLast: numberOfOperatorsToPop.
		newNode receiver: newOperands first.
		newNode addNodes: newOperands copyWithoutFirst to: newNode args.
		newNode addTokens: newOperators to: newNode ops.
		operands addLast: newNode.
		ix <= binaryRequest ops size 
	] whileTrue.
	self assert: operands size = (operators size + 1).
	operands size > 1 ifTrue: [
		newNode := GraceBinaryRequestNode new.
		newNode receiver: operands first.
		newNode addNodes: operands copyWithoutFirst to: newNode args.
		newNode addTokens: operators to: newNode ops ].
	newNode fixParentPointers.
	binaryRequest replaceWith: newNode.
	^ newNode