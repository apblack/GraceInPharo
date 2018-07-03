accessing
at: key ifAbsent: aBlock
	"Answer the value associated with the key or, if key isn't found, answer
	the result of evaluating aBlock.  Make sure that the names of the special control
	structures are found if the key 'standardGraceExtendedControlStructures' is present."

	^ super
		at: key
		ifAbsent: [ ((self includesKey: 'standardGraceExtendedControlStructures')
				and: [ self isNameOfSpecialControlStructure: key ])
				ifTrue: [ | markerDef |
					markerDef := self at: 'standardGraceExtendedControlStructures'.
					self at: key put: (self specialVariableFor: markerDef) ]
				ifFalse: [ aBlock value ] ]