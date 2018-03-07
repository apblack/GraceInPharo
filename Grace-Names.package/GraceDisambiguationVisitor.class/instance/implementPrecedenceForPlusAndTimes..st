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
			ix <= binaryRequest ops size and: [ 
				self operator: (binaryRequest ops at: ix) isOfGreaterOrEqualPrecedence: operators last ] 		] whileTrue.
		numberOfOperatorsToPop := self operatorsToBePoppedFrom: operators.
		newOperands := operands removeLast: numberOfOperatorsToPop + 1.
		newOperators := operators removeLast: numberOfOperatorsToPop.
		newNode := GraceBinaryRequestNode withOperands: newOperands operators: newOperators.
		operands addLast: newNode.
		ix <= binaryRequest ops size 
	] whileTrue.
	self assert: operands size = (operators size + 1).
	operands size > 1 ifTrue: [
		newNode := GraceBinaryRequestNode withOperands: operands operators: operators ].
	binaryRequest replaceWith: newNode fixParentPointers.
	^ newNode