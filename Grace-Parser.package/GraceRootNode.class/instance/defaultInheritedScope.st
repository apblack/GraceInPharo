inheritance
defaultInheritedScope
	^ self enclosingModuleNode name = 'intrinsic' 
		ifTrue: [ GraceEmptyScope new ]
		ifFalse: [ ((GraceModuleRegistry attributeScopeOf: 'intrinsic')  
						lookup: 'graceObject') attributeScope ]