default scopes
defaultInheritedScope
	^ node enclosingModuleNode name = 'intrinsic' 
		ifTrue: [ GraceEmptyScope new ]
		ifFalse: [ ((GraceModuleRegistry attributeScopeOf: 'intrinsic')  
						attributeScopeOf: 'graceObject') ]