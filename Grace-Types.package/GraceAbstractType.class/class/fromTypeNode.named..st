instance creation
fromTypeNode: aNode named: aName
	^ (self fromTypeNode: aNode) 
			typeName: aName;
			yourself