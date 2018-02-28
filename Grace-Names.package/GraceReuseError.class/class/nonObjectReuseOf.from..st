error reporting
nonObjectReuseOf: receiverScope from: reuseNode
	| componentName |
	componentName := receiverScope node declaredName.
	self signal: 'element ' , componentName , ' of your ' , reuseNode description , ' is not an object' 