*Grace-Types
instantiateWithArgs: aCollectionOfTypes

	| instance |
	instance := GraceTypeInstance newFrom: self withArguments: aCollectionOfTypes.
		"it's important that the first argument is `self`, and not `self typeValue`, because 
		the latter may cause an infinite recursion if this type referes to itself by name, 
		as in type Collection[[T]] = interface { ... sort -> Collection[[T]] ... }"
	^ instance
