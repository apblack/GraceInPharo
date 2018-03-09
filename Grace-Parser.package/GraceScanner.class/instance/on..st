initialize-release
on: aStream
	super on: aStream.
	[newlineChars includes: stream peek] whileTrue: [ stream next ].	"skip blank lines"
	(self atEnd not and: [ stream peek isSeparator ]) ifTrue: [ 
		self lexicalError: 'your first statement should start at the beginning'.]
		