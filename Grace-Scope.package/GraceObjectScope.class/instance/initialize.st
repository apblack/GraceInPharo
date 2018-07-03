initialization
initialize
	super initialize.
	reusedNames := GraceNameDictionary new.
	statusOfReusedNames := #undiscovered