instance creation
reusedDefinition: aVariable atLevel: n
	^ self new definition: aVariable;
			isReused: true;
			levelsUp: n;
			yourself