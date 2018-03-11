instance creation
definition: aVariable atObject: o in: aScope
	^ self new definition: aVariable;
			isReused: false;
			objectsUp: o;
			definingScope: aScope;
			yourself