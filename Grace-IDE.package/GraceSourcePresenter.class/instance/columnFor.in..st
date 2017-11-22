keybindings
columnFor: textIndex in: aTextString 
	"find the column of the position textIndex in aTextString"
	
	| ix |
	ix := textIndex.
	[ ix := ix - 1. (aTextString at: ix) = Character cr and: [ix > 0]] whileFalse.
	^ textIndex - ix