syntax highlighting
highlighter
	
	^ [ | regex commentRegex |
		regex := String streamContents: [  :s | 
			s << '(^|\W)('.
			GraceScanner reservedWords do: [ :wd | s << wd ] separatedBy: [ s << '|' ].
			s << '|#pragma)($|\W)' ].
		highlighter := GraceRegexSyntaxHighlighter new 
								addRegex: regex
								withAttribute: (TextColor color: (Color r: 0.82 g: 0 b: 8.5)).
		commentRegex := String streamContents: [ :s | 
			s << '//[^' << Character lf << Character cr << ']*' ].
		highlighter addRegex: commentRegex withAttributes: { TextColor gray . TextEmphasis italic } ] value
	