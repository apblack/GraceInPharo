initialize-release
on: aStream
	super on: aStream.
	[newlineChars includes: stream peek] whileTrue: [ stream next ].	"skip blank lines"
	stream peek isSeparator ifTrue: [ 
		self lexicalError: 'Your first statement should start at the beginning'.]
		