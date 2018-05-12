definition collection
outerDefinitionOf: aName in: aScope addTo: aCollection
	"Looks for definitions of aName in the scopes surrounding aScope, and adds the first one to aCollection, after tagging it with its depth from our start point.  This method is complicated by the fact that we stop searching one level above the first module, since that scope is our dialect."

	| currentScope objectLevel dialectDef scopeLevel |
	currentScope := aScope.
	objectLevel := 0.
	scopeLevel := 0.
	[ currentScope isModuleScope ]
		whileFalse: [
			scopeLevel := scopeLevel + 1.
			currentScope isObjectScope ifTrue: [ objectLevel := objectLevel + 1 ].
			currentScope := currentScope outerScope.
			(currentScope lookupLocally: aName ifAbsent: [
				(currentScope lookupReused: aName ifAbsent: [  ])
					ifNotNil: [ :def | 
						aCollection 
							add: (self reusedDefinition: def atObject: objectLevel levels: scopeLevel).
						^ aCollection ] ] )
				ifNotNil: [ :def | 
					aCollection add: (self definition: def atObject: objectLevel levels: scopeLevel).
					^ aCollection ] ].
	dialectDef := currentScope outerScope lookupLocallyOrReused: aName ifAbsent: [ ^ aCollection ].
	dialectDef isPublic
		ifTrue: [ 
			(currentScope outerScope definesLocally: aName) ifTrue: [ 
				aCollection add: (self definition: dialectDef atObject: objectLevel + 1 levels: scopeLevel) 
			] ifFalse: [
				aCollection add: (self reusedDefinition: dialectDef atObject: objectLevel + 1 levels: scopeLevel)
			]
		].
	^ aCollection