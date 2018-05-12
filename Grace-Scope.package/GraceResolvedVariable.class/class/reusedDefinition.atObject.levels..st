instance creation
reusedDefinition: aVariable atObject: o levels: n
	^ self new definition: aVariable;
			isReused: true;
			objectsUp: o;
			levelsUp: n;
			yourself