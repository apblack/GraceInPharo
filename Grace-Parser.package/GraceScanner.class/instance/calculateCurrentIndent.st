line handling
calculateCurrentIndent
	| ch str |
	str := ReadStream on: outputStream contents.
	ch := str next.
	"self assert: [ (ch = Character lf) or: [ch = Character cr or: [ch = (Character codePoint: 16r2028)] ] ]."
	(ch = Character cr) ifTrue: [str peekFor: Character lf].
	^ str size - str position