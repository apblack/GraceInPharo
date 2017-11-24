api
selectOrCreateTabForFile: aFileReference
	"If file is not managed yet by the GraceFilesTabManager, create a tab for it."
	(self filesManaged includes: aFileReference)
		ifFalse: [ 
			self createTabForFile: aFileReference ].
	
	"In any case, select the tab corresponding to #aFileReference."
	self
		selectTabForFile: aFileReference