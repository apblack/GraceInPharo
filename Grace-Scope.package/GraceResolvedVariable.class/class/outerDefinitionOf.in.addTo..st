definition collection
outerDefinitionOf: aName in: aScope addTo: aCollection
	"Looks for definitions of aName in the scopes surrounding aScope, and adds the first one to aCollection, after tagging it with its object depth from our start point.  This method is complicated by the fact that we stop searching one level above the first module, since that scope is our dialect."
	
	| currentScope objectLevel dialectDef dialectScope |
	currentScope := aScope.
	objectLevel := 0.
	[currentScope isModuleScope] whileFalse: [
		currentScope isObjectScope ifTrue: [ objectLevel := objectLevel + 1 ].
		currentScope := currentScope outerScope.
		(currentScope lookupLocallyOrReused: aName ifAbsent: [  ])
			ifNotNil: [ :def | 
				aCollection add: (self definition: def atObject: objectLevel in: currentScope).
				^ aCollection ] ].
	dialectScope := currentScope outerScope.
	dialectDef := dialectScope lookupLocallyOrReused: aName ifAbsent: [ ^ aCollection ].
	dialectDef isPublic ifTrue: [
		aCollection add: (self definition: dialectDef atObject: objectLevel + 1 in: dialectScope) ].
	^ aCollection
 