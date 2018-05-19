instance creation
from: aNode
	aNode ifNil: [ ^ GraceUnknownType instance ].
	self assert: (aNode isKindOf: GraceRootNode).
	^ aNode acceptVisitor: self new