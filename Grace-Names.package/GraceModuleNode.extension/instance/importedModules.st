*grace-names
importedModules
	^ scope importedModules collect: [ :each |
		 GraceModuleRegistry lookup: each definingParseNode resourceValue ]