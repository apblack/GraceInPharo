scopes
attributeScope
	| typeOperator |
	ops isEmpty ifTrue: [ ^ term attributeScope ].
	typeOperator := ops first value.
	(typeOperator = '&') ifTrue: [ ^ args inject: term attributeScope into: [ :acc :each | acc join: each attributeScope ] ].
	(typeOperator = '|') ifTrue: [ ^ args inject: term attributeScope into: [ :acc :each | acc meet: each attributeScope ] ].
	(typeOperator = '+') ifTrue: [ ^ args inject: term attributeScope into: [ :acc :each | acc meet: each attributeScope ] ].
	self halt: 'need to complete the other cases of a type expression'