updating parser
parserDefinition
	"extract the parser definition from the definition comment"
	
	^ SmaCCDevelopmentUI new getCommentsFrom: GraceParser class >> #definitionComment
