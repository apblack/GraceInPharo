instance creation
from: aTypeExpression
	operands :=  OrderedCollection with: (GraceBuildType from: aTypeExpression term).
	aTypeExpression args do: [ :each | operands addLast: (GraceBuildType from: each) ].	
	"We don't convert to DNF, because that would involve resolving type names to their values, 
	whoch might require building a new type representation, which might contain a variant, 
	which might recursively bring us back here to convert it to DNF.  Consider, for example:
	type Boolean = interface { 
		...  
		&& (other: Boolean | Predicate0) -> Boolean 
		... 
	}"
	^ self