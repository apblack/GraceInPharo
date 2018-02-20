instance creation
definition: aVariable atLevel: n atObject: o
	^ self new definition: aVariable;
			isReused: false;
			levelsUp: n;
			objectsUp: o;
			yourself