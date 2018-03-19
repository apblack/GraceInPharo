method access
methodNamed: aString 
	^ self methodNamed: aString ifAbsent: [ self error: 'there is no method ' , aString , ' in this type' ]