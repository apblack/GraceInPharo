accessing definitions
lookupReused: name ifAbsent: aBlock ifPresent: pBlock
	"this is the default behaviour for scopes that don't allow reuse.  This method is overriden for  object scopes"
	^ aBlock value