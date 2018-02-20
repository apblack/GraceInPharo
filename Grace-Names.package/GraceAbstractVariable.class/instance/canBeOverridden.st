testing
canBeOverridden
	"Can this definition be overridden?"
	^ self attributeScope isReusable and: [ self definingNode outerScope isReusable ]