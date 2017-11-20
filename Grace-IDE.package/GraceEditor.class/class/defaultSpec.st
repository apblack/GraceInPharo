specs
defaultSpec
	<spec>
	^ SpecLayout composed
		newColumn: [ :column | 
			column
				add: #source
					origin: 0 @ 0
					corner: 1 @ 0.8;
				newRow: [ :row |  row add: #saveButton ; add: #saveAsButton; add: #runButton]
					origin: 0 @ 0.8 corner: 1 @ 0.8 offsetOrigin: 0 @ -30 offsetCorner: 1 @ 0;
				addSplitter;
				add: #messages
					origin: 0 @ 0.2
					corner: 1 @ 1 ]