instance creation
from: aTypeExpression
	operands :=  OrderedCollection with: (GraceBuildType from: aTypeExpression term).
	aTypeExpression args do: [ :each | operands addLast: (GraceBuildType from: each) ].	
	^ self convertToDNF