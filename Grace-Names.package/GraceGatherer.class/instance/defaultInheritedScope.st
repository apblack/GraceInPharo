default scopes
defaultInheritedScope
	^ node enclosingModuleNode name = 'intrinsic' 
		ifTrue: [ GraceEmptyScope instance ]
		ifFalse: [ ((GraceModuleRegistry attributeScopeOf: 'intrinsic')  
						attributeScopeOf: 'graceObject') ]