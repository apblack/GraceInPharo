private
findScanner
	"Search until we find some descendent who knows."
	| doBlock |
	doBlock := [ :each | each scanner ifNotNil: [ :s | ^ s ] ].
	self nodesDo: doBlock andTokensDo: doBlock.
	^ nil