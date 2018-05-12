adding local
redefine: aVariable withName: aName
	"overwites an existing defintion"
	names at: aName put: aVariable.
	aVariable