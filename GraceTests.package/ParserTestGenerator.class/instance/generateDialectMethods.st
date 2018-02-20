dialects
generateDialectMethods
	"generates all the dialect methods from their files"

	dialectFiles do: [ :each |
		self generateDialectMethodFromFile: each ]
	
	