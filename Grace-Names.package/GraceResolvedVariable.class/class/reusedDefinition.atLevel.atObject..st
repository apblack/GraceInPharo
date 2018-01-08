instance creation
reusedDefinition: aVariable atLevel: n atObject: o
	^ self new definition: aVariable;
			isReused: true;
			levelsUp: n;
			objectsUp: o;
			yourself