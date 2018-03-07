visit methods
visitObjectConstructor: anObjectConstructor
	"this method is also used to visit Module nodes — a subclass of ObjectConstructor nodes"

	(GraceGatherer for: anObjectConstructor) collectReusedNames.
	^ super visitObjectConstructor: anObjectConstructor