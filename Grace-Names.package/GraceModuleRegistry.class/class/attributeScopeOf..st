accessing
attributeScopeOf: aModule
	^ (self uniqueInstance at: aModule ifAbsent: [self tryToCompile: aModule]) scope