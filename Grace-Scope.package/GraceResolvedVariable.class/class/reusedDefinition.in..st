instance creation
reusedDefinition: aDef in: aScope
	^ self new
		definition: aDef;
		isReused: true;
		objectsUp: 0;
		definingScope: aScope;
		yourself