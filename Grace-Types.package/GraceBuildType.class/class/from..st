instance creation
from: aNode
	self assert: (aNode isKindOf: GraceRootNode).
	^ aNode acceptVisitor: self new