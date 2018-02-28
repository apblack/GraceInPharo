error handling
selfReuseError: aReuseNode
	| superDescription |
	superDescription := aReuseNode description. 
	^ self 
		reuseError: 'it''s not possible to ' , superDescription , ' from `self`, because `self` does not exist when the ' , superDescription , ' statement is executed' 
		node: aReuseNode superExpr  