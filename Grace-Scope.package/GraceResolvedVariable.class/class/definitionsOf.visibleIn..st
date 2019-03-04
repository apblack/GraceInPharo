definition collection
definitionsOf: aName visibleIn: aScope
	"answers a collection of my instances describing the definitions of aName, visible from aScope. The collection is empty if there is no definition. If aName is defined locally in aScope, then we allways answer a singleton collection, ignoring inherited definitions and those in outer scopes; this gives local definitions priority over inherited and enclosing definitions. If aName is defined by inheritance _and_ in an outer scope, then the collection will have 2 elements.  In no case will it have more than 2 elements."

	| result objectScope |
	self lexicalOrLocalDefinitionOf: aName in: aScope ifPresent: [ :def | 
		^ OrderedCollection with: def ].
	objectScope := aScope objectScope.
	result := self reusedDefinitionOf: aName in: objectScope addTo: OrderedCollection new.
	result := self outerDefinitionOf: aName in: objectScope addTo: result.
	^ result