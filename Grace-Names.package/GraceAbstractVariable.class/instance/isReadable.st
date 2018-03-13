testing
isReadable
	^ self isPublic or: [self isAnnotatedReadable]