definition collection
definition: aVariable atObject: o
	^ self new definition: aVariable;
			isReused: false;
			objectsUp: o;
			yourself