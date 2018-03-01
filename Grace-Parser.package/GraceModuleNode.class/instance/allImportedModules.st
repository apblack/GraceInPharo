imports
allImportedModules
	^ self collectAllImportedModulesInto: IdentitySet new
	"Using an Identity set relies on the fact that there will be one module parse tree for 
	each module named in the registry.  If we use a Set, then the equality and hash operations 
	on the tree take approvimately forever"
