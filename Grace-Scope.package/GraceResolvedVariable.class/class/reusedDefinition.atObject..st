instance creation
reusedDefinition: aVariable atObject: o
	^ self new definition: aVariable;
			isReused: true;
			objectsUp: o;
			yourself