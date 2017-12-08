initialization
initialize
	super initialize.
	newlineChars := GraceScanner newlineChars.
	self autoAccept: true.
	self acceptBlock: [: text | self syntaxHighlight: text ].
	self whenBuiltDo: [ :ann | 
		self initializeKeyBindings.
		ann widget font: StandardFonts codeFont ].