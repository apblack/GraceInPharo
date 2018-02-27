file system
modificationTimeOf: aModuleName
	^ (self locateSourceFor: aModuleName) modificationTime 