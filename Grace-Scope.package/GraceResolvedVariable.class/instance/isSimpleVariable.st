testing
isSimpleVariable
	"A simple variable is one that should be accessed directly, rather than through a method. Note that defs and vars in the module or dialect are simple, whereas those in inner object scopes must be treated as methods, because they can be overridden.  Also"
	definition isMethod ifTrue: [ ^ false ].
	definingScope isModuleScope ifTrue: [ ^ true ].
	^ objectsUp = 0 and: [ definingScope isObjectScope not ]
		"anything local to this object, other than fields of the object itself"