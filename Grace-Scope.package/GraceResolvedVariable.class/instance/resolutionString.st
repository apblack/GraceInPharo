printing
resolutionString
	"Answers a string, suitable for printing, that describes the location of this variable."
	^ String streamContents: [ :s | 
		s << definition kind << ' ' << self reuseString << ' by the '.
		(objectsUp = 0) 
			ifTrue: [ s << 'current' ]
			ifFalse: [ (1 to: objectsUp) do: [ :_ | s << 'outer' ] separatedBy: [ s << '.' ] ].
		s << ' object'
	]