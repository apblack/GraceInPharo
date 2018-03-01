*grace-names
isUpToDate
	^ self newerThanFile and: [ 
		self allImportedModules allSatisfy: [ :each | each isUpToDate and: [ 
				self compilationTime > each compilationTime ] ] ]