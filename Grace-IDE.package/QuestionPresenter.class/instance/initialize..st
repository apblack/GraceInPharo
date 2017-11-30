initialization
initialize: aString
	question label: ((aString endsWith: '?') 
		ifTrue: [ aString ]
		ifFalse: [ aString copyWith: $? ])