default scopes
defaultInheritedScopeFor: aNode
	^ aNode enclosingModuleNode name = 'intrinsic' 
		ifTrue: [ GraceEmptyScope new ]
		ifFalse: [ ((GraceModuleRegistry attributeScopeOf: 'intrinsic')  
						attributeScopeOf: 'graceObject') ]