keybindings
startOfLineContaining: textIndex in: aTextString 
	"find the position of the first character of the line containing textIndex"
	
	| ix |
	ix := textIndex.
	[ ix := ix - 1. ix <= 0 or: [newlineChars includes: (aTextString at: ix)] ] whileFalse.
	^ ix + 1