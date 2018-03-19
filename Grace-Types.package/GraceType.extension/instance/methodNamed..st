*grace-types
methodNamed: aName 
	^ self methodNamed: aName ifAbsent: [ 
		self error: 'the type ' , self name , ' does not have a method ' , aName ]