as yet unclassified
editingMorphInWidget: aWidget

	aWidget allMorphsDo: [ :each | 
		(each respondsTo: #ensureAndGetNewHighlightSegmentFrom:to:) ifTrue: [ ^ each ] ].
	^ nil