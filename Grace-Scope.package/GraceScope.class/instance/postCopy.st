copying
postCopy
	super postCopy.
	names := names copy.
	outerScope := GraceEmptyScope instance.