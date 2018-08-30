accessing
range
	^ GraceRange from: stream position to: stream position + outputStream size - 1 in: self
	