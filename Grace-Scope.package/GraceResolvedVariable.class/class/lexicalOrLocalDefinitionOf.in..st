definition collection
lexicalOrLocalDefinitionOf: aName in: aScope
	"Look for aName in the nest of method and block scopes including and surrounding aScope,
	but not outside the current object.  Don't look at reused names.  Returns nil if 
	aName is not found."
	| def currentScope |
	currentScope := aScope.
	[  def := currentScope lookupLocally: aName ifAbsent: [ ].
		def ifNotNil: [ ^ self localDefinition: def ].
		currentScope isObjectScope ifTrue: [ ^ nil ].
		currentScope := currentScope outerScope.
	] repeat
