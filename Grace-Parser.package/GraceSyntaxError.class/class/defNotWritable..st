error handling
defNotWritable: aGraceAnnotationNode 
	^ self signal: 'defs cannot be made writable' node: aGraceAnnotationNode