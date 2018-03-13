testing
isWritable
	^ self isPublic or: [self isAnnotatedWritable]