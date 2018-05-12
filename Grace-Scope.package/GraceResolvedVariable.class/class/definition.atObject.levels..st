instance creation
definition: aVariable atObject: o levels: n
	^ self new definition: aVariable;
			isReused: false;
			objectsUp: o;
			levelsUp: n;
			yourself