specs
defaultSpec
	<spec: #default>

	| fontWidth listWidth |
	fontWidth := (StandardFonts defaultFont widthOfString: 'M').
	listWidth := fontWidth * 25.
	
	^ SpecLayout composed
		newColumn: [ :c | 
			c add: #toolbar height: self toolbarHeight.
			c newRow: [ :row | 
				row add: #fileTree right: listWidth.
				row addSplitter.
				row newColumn: [ :subColumn |
					subColumn
						add: #tabManager
							origin: 0 @ 0
							corner: 1 @ 0.8;
						add: #messages ] ] ];
		yourself
	
	