compiling
compileStream: aStream named: aName
	"It seems as though compiling directly from a stream won't work with the new Zn streams"
	^ self compileString: aStream contents named: aName