printing
printOn: aStream
	aStream << (self className copyReplaceAll: 'Grace' with: '').
	names printElementsOn: aStream