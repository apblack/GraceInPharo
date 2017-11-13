naming
kind
	"returns a string that describes the kind of variable I represent"
	^ (self className copyReplaceAll: 'Grace' with: '') uncapitalized 