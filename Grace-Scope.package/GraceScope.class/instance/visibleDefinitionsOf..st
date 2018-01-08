accessing definitions
visibleDefinitionsOf: aName 
	"answers a collection of GraceResolvedVariables describing the definitions of aName.  The collection 
	is empty if there is no definition. If aName is defined locally in this scope, then we allways
	answer a singleton collection, ignoring inherited	 definitions and those in outer scopes; this
	gives local definitions priority over inherited and enclosing definitions.
	If aName is defined by inheritance _and_ in an outer scope, then the collection will have 2 elements.
	In no case will it have more than 2 elements."
	| result nestingLevel scope objectLevel |
	result := OrderedCollection new.
	(self lookupLocally: aName ifAbsent: [ ]) ifNotNil: [ :def | 
		result add: (GraceResolvedVariable localDefinition: def).
		^ result ].
	(self lookupReused: aName ifAbsent: [ ]) ifNotNil: [ :def | 
		result add: (GraceResolvedVariable reusedDefinition: def) ].
	scope := self.
	nestingLevel := 0.
	objectLevel := 0.
	[ 	scope := scope outerScope.
	  	scope == GraceEmptyScope instance 
	] whileFalse: [
		nestingLevel := nestingLevel + 1.
		(scope isObjectScope) ifTrue: [ objectLevel := objectLevel + 1 ].
	 	(scope lookupLocallyOrReused: aName ifAbsent: [ ]) ifNotNil: [ :def | 
			result add: (GraceResolvedVariable definition: def atLevel: nestingLevel atObject: objectLevel).
			^ result
		]
	].
	^ result