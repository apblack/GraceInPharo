specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | 
			column
				newRow: [ :row | 
					row
						add: #question ];
				newRow: [ :row | 
					row
						add: #okButton;
						add: #cancelButton ]
					height: 25 ];
		yourself