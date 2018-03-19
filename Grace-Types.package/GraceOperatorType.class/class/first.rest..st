instance creation
first: one rest: more
	^ self withOperands: ((OrderedCollection with: one) addAll: more)