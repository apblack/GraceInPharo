line handling
handleIndentationOnError: errorBlock
	| indentationChange braceDifference |
	indentationChange := currentIndent - indentStack last.
	indentationChange = 0
		ifTrue: [ ^ self ].
	indentationChange abs = 1
		ifTrue: [ ^ errorBlock value: 'indentation change of 1 is not allowed' ].
	indentationChange > 0
		ifTrue: [ indentStack addLast: currentIndent.
			^ self ].

	"here we handle an outdent"
	braceDifference := priorLineBraceDepth - braceDepth.
	indentStack removeLast: braceDifference.
	stream peek = $}
		ifTrue: [ closingBraceLine := true.
			^ self ].
	braceDifference = 0
		ifTrue: [ ^ errorBlock
				value: 'you can''t reduce the indentation except where you close a block' ].
	indentStack last = currentIndent
		ifFalse: [ ^ errorBlock value: 'the indentation must return to the previous level' ]