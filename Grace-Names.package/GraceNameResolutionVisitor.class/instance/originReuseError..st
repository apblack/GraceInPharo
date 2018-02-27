error handling
originReuseError: aReuseNode
	| superDescription origin |
	superDescription := aReuseNode isInheritStatement 
		ifTrue: [ 'inherit' ] 
		ifFalse: [ 'use' ].
	origin := aReuseNode superExpr declaredName.
	^ self 
		reuseError: 'it''s not possible to ' , superDescription , ' from `,' origin , '`, because it''s declared in a ', origin description  
		node: aReuseNode superExpr  