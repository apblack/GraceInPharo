error handling
selfReuseError: aReuseNode
	| superDescription |
	superDescription := aReuseNode isInheritStatement 
		ifTrue: [ 'inherit' ] 
		ifFalse: [ 'use' ].
	^ self 
		reuseError: 'it''s not possible to ' , superDescription , ' through `self`, because `self` does not exist when the ' , superDescription , ' statement is executed' 
		node: aReuseNode superExpr  