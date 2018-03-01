imports
collectAllImportedModulesInto: collector
	 
	self importedModules do: [ :each | 
		(each importedModules includes: self) ifTrue: [
			self error: ('Cyclic import detected; {1} imports {2} which imports {1} ...'
				  				format: { self declaredName . each declaredName } ) ].
		collector add: each.
		each collectAllImportedModulesInto: collector
	].
	^ collector