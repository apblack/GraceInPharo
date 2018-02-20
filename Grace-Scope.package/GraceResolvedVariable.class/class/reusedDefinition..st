instance creation
reusedDefinition: aVariable
	^ self new definition: aVariable;
			isReused: true;
			levelsUp: 0;
			objectsUp: 0;
			yourself