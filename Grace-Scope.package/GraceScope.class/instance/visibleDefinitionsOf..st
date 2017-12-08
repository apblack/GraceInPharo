accessing definitions
visibleDefinitionsOf: aName 
	"answers a collection of GraceResolvedVariables describing the definitions of aName.  The collection 
	is empty if there are no definitions. If aName is defined locally in this scope, then we allways
	answer a singleton collection, ignoring inherited	 definitions and those in outer scopes; if this
	were not the case, local definitions would not have priority.
	If aName is defined by inheritance and in an outer scope, then the collection will have 2 elements.
	In no case will it have more than 2 elements."
	| result outerLevel scope |
	result := OrderedCollection new.
	(self lookupLocally: aName ifAbsent: [ ]) ifNotNil: [ :def | 
		result add: (GraceResolvedVariable localDefinition: def atLevel: 0).
		^ result ].
	(self lookupReused: aName ifAbsent: [ ]) ifNotNil: [ :def | 
		result add: (GraceResolvedVariable reusedDefinition: def atLevel: 0) ].
	outerLevel := 1.
	scope := self outerScope.
	[ scope == GraceEmptyScope instance ] whileFalse: [ 
		(scope lookupLocally: aName ifAbsent: [ 
			scope lookupReused: aName ifAbsent: [ ] 
		]) ifNotNil: [ :def | 
			result add: (GraceResolvedVariable localDefinition: def atLevel: outerLevel).
			^ result
		].
		scope := scope outerScope.
		outerLevel := outerLevel + 1
	].
	^ result