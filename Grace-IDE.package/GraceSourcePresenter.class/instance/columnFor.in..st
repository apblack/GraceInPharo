keybindings
columnFor: textIndex in: aTextString 
	"find the column of the position textIndex in aTextString"
	| ix |
	ix := textIndex.
	[ ix := ix - 1. ix <= 0 or: [newlineChars includes: (aTextString at: ix)] ] whileFalse.
	^ textIndex - ix