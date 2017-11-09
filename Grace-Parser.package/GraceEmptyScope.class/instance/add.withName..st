adding
add: aName withName: aString
	self error: ('an attempt was made to add the name {1} to a non-existant scope' 
						format: { aName name })