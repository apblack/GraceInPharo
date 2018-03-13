testing
isConfidential
	^ self isReadable not and: [ self isWritable not ]