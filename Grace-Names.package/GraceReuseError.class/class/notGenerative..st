error reporting
notGenerative: aReuseNode
	self 
		signal: 'the expression in your ', aReuseNode description ,
				  ' statement does not generate a fresh object' 
		withTag: aReuseNode superExpr