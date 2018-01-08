instance creation
localDefinition: aVariable
	^ self new definition: aVariable;
			isReused: false;
			levelsUp: 0;
			objectsUp: 0;
			yourself