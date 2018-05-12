testing
isFrom_graceObject	
	"true if this node is a definition of an attribute in `graceObject`"
	^ self parent declaredName = 'graceObject' and: 
		[ self enclosingModule name = 'intrinsic' ]