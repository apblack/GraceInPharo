default scopes
defaultInheritedScope
	"Note that we inherit from intrinsic.graceObject, not the graceObject in the current scope.
	This is so that all objects have the same ancestor, and because of the rule that `use` does
	not include methods from graceObject"
	^ node enclosingModuleNode name = 'intrinsic' 
		ifTrue: [ GraceEmptyScope instance ]
		ifFalse: [ ((GraceModuleRegistry attributeScopeOf: 'intrinsic')  
						attributeScopeOf: 'graceObject') ]