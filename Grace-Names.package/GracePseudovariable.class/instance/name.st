accessing
name
	name ifNotNil: [ ^ name ].
	isModule ifTrue: [ ^ 'the module' ].
	isDialect ifTrue: [  ^ 'the dialect' ].
	^ 'an Object'