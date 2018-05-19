conformance
substitute: bindings
	"a responsibility of those subclasses that are used to implement types,
	such as Signature (representing a method signature), and Interface.  It's 
	also implemented by GraceType (representing a named type), which is a 
	subclass of GraceAbstractVariable"
	self flag: 'TODO: refactor so that this method can be implemented on a sub-hierarchy'.
	^ self subclassResponsibility  