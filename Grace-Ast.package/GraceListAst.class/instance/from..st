instance initialization
from: aCollection 
	innerList := aCollection.
	range := GraceRange encompassing: (innerList collect: [ :each | each range ]).
	^ self