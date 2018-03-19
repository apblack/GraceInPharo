DNF conversion
convertToDNF
	"if I represent ( t | u ) & (w), then we need to push the variant to the top level, and create
	(t & w) | (u & w)"
	| variantExpression newVariants |
	variantExpression := operands detect: [ :each | each isVariant ] ifNone: [ ^ self ].
	newVariants := variantExpression variants collect: [ :each | 
		(GraceAmpersandType first: each rest: (operands copyWithout: variantExpression)) convertToDNF ].
	^ GraceVariantType withOperands: newVariants