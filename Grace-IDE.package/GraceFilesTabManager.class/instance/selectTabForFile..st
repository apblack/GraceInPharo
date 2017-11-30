api
selectTabForFile: aFileReference
	| tab |
	tab := (self tabForFile: aFileReference).
	tab selected: true.
	^ tab