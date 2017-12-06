instance creation
localDefinition: aVariable atLevel: n
	^ self new definition: aVariable;
			isReused: false;
			levelsUp: n;
			yourself