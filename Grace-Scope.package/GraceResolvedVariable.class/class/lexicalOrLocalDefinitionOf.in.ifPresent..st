definition collection
lexicalOrLocalDefinitionOf: aName in: aScope ifPresent: pBlock
	"Look for a definition of aName in the nest of method and block scopes including and
	surrounding aScope, but not outside the current object.  Don't look at reused names.  
	Returns nil if aName is not found; if it is found, applies pBlock to a ResolvedVariable 
	containing the definition."
	| currentScope |
	currentScope := aScope.
	[ currentScope lookupLocally: aName 
			ifAbsent: [ ]
			ifPresent: [ :def | ^ pBlock value: (self localDefinition: def) ].
		currentScope isObjectScope ifTrue: [ ^ nil ].
		currentScope := currentScope outerScope.
	] repeat
