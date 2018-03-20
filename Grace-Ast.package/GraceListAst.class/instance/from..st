instance initialization
from: aCollection 
	innerList := aCollection.
	sourceRange := GraceRange encompassing: (innerList collect: [ :each | each sourceRange ]).
	^ self