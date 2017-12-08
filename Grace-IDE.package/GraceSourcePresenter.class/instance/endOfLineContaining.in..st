keybindings
endOfLineContaining: textIndex in: aTextString 
	"find the position of the last character of the line containing textIndex"
	
	| ix size |
	ix := textIndex.
	size := aTextString size.
	[ ix := ix + 1. ix > size or: [newlineChars includes: (aTextString at: ix)] ] whileFalse.
	^ ix