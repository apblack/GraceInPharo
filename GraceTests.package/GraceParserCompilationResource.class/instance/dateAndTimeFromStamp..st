dateAndTime patch
dateAndTimeFromStamp: aStamp
	"this method should be implemented on compiled code.  This version is here
	while we are Waiting for Godot"

	"Answers the DateAndTime of the current version of the receiver. 
	The stamp is retrieved from the sources or changes file. 
	Answers the empty string if no time stamp is available."

	"(self >> #dateAndTime) dateAndTime >>> '2017-11-10T13:29:00+00:00'"

	^ aStamp ifNotEmpty: [:s | 
		| str |
		str := s readStream.
		[ $  == str next ] whileFalse.
		DateAndTime readFrom: str
	]