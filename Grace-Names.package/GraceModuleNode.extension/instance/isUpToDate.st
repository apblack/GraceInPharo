*grace-names
isUpToDate
	^ self compilationTime > (GraceModuleRegistry  fileModificationTimeOf: self name) and: [ 
		self allImportedModules allSatisfy: [ :each | each isUpToDate and: [ 
				self compilationTime > each compilationTime ] ] ]