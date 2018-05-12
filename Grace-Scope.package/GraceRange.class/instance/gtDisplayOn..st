printing
gtDisplayOn: stream
	self printNameOn: stream.
	stream
		space;
		nextPut: $[;
		nextPutAll: (self rangePrintString);
		nextPut: $];
		space