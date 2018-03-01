accessing
attributeScopeOf: aModule
	^ (self uniqueInstance lookup: aModule ifAbsent: [self tryToCompile: aModule]) scope