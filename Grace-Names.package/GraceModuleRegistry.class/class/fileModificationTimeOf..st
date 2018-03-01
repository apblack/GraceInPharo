file system
fileModificationTimeOf: aModuleName
	^ (self locateSourceFor: aModuleName) modificationTime 