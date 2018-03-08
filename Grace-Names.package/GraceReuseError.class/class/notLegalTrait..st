error reporting
notLegalTrait: aUseNode
	self 
		signal: 'the expression in your ', aUseNode description ,
				  ' statement does not refer to a trait' 
		node: aUseNode superExpr