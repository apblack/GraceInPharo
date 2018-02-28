error handling
originReuseError: aReuseNode
	| origin |
	origin := aReuseNode superExpr declaredName.
	^ self 
		reuseError: 'it''s not possible to ' , aReuseNode description , ' from `,' origin , '`, because it''s declared in a ', origin description  
		node: aReuseNode superExpr  