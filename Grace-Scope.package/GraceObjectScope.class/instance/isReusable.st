testing
isReusable
	"answer true if this scope can be reused and its definitions overridden.
	If this objectScope stands as the initializer in a def, it can't be reused; 
	if it's inside a method, trait or class then it can be."
	^ self node isGraceClass or: [ self node parent isMethod ]