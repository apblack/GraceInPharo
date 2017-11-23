api
beForFile: aFileReference
	"Adapt the GraceEditor to the file #aFileReference."
	file := aFileReference.
	self sourcePane text: aFileReference contents