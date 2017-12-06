visit methods
visitObjectConstructor: anObjCons
	anObjCons scopeNotYetSet ifTrue: [
			"The scope may have already been set, e.g, by the visit method for Modules"	 
			self createScope: GraceObjectScope in: anObjCons ].
	^ super visitObjectConstructor: anObjCons