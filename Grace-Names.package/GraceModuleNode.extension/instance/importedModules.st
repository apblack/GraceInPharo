*grace-names
importedModules
	^ scope importedModules collect: [ :each |
		 GraceModuleRegistry lookup: each definingNode resourceValue ]