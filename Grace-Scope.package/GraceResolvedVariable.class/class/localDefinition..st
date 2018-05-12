instance creation
localDefinition: aVariable
	^ self new definition: aVariable;
			isReused: false;
			objectsUp: 0;
			levelsUp: 0;
			yourself