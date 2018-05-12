default scopes
defaultInheritedScope
	"Note that we inherit from intrinsic.graceObject, not the graceObject in the current scope.	This is so that all objects have the same ultimate ancestor, and because of the rule that `use` excludes methods from graceObject.
		
	The exception is that in the module intrinsic, we don't inherit from intrinsic.graceObject"
		
	^ node isInIntrinsicModule
		ifTrue: [ GraceEmptyScope instance ]
		ifFalse: [ ((GraceModuleRegistry attributeScopeOf: 'intrinsic')  
						attributeScopeOf: 'graceObject') ]