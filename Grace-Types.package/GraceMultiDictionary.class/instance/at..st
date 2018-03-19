accessing
at: aKey
	^ internalDict at: aKey ifAbsent: [ IdentitySet new ]