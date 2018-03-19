instance creation
from: aNode withName: aName
	^ (self from: aNode) 
			typeName: aName;
			yourself