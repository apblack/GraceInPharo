visiting
visitChildren: aNode
	self acceptNodes: aNode sortedChildren.
	^ aNode