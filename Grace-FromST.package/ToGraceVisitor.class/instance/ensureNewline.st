output
ensureNewline
	outStream ensureNoSpace.
	outStream ensureEndsWith: Character cr.
	isLineEmpty := true