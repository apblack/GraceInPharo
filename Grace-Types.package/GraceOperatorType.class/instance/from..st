instance creation
from: aTypeExpression
	operands := OrderedCollection with: aTypeExpression term.
	operands addAll: aTypeExpression args.
	^ self convertToDNF