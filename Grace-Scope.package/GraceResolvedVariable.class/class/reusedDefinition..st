instance creation
reusedDefinition: aVariable
	^ self new definition: aVariable;
			isReused: true;
			objectsUp: 0;
			yourself