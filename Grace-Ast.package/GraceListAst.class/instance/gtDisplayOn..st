inspecting
gtDisplayOn: stream
	self printNameOn: stream.
	stream
		space;
		nextPut: $[;
		print: self size;
		nextPutAll: (' item' asPluralBasedOn: self);
		nextPut: $];
		space.
	self printElementsOn: stream