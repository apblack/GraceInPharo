instance creation
from: aNode typeName: aName
	self assert: (aNode isKindOf: GraceRootNode).
	^ aNode acceptVisitor: (self new typeName: aName)