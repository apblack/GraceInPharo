operator precedence
operator: aNewGraceToken isOfGreaterOrEqualPrecedence: aPriorGraceToken
	"The tokens must be members of the set {*, +, /, -}, since Grace has no other precedence rules"
	^ ('*/' includesSubstring: aNewGraceToken value) 
			or: ['+-' includesSubstring: aPriorGraceToken value ]