instance creation
fromTypeNode: aNode
	aNode isIdentifier ifTrue: [ ^ aNode variable ].
	aNode isInterface ifTrue: [ ^ GraceObjectType fromTypeNode: aNode ].
	aNode isTypeExpression ifTrue: [ aNode ops ifEmpty: [ 
			^ self fromTypeNode: aNode term] ].
	(aNode isType and: [ aNode id isNotNil ]) ifTrue: [ 
			^ self fromTypeNode: aNode id  ].
	aNode isSelfType ifTrue: [ ^ GraceSelfTypeNode new].
	aNode isTypeDeclaration ifTrue: [ ^ aNode variable].
	self error: 'building types from ' , aNode className , ' is not yet implemented'