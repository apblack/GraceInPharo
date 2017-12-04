privileged
restoreState: aSavedState
	"Restore the state using the object returned from #currentState."
	
	super restoreState: aSavedState.
	braceChange := aSavedState braceChange.
	currentLineBraceDepth := aSavedState currentLineBraceDepth.
	indentOfLineBeingContinued := aSavedState indentOfLineBeingContinued.
	indentStack := aSavedState indentStack.
	maxIndentOfContinuation := aSavedState maxIndentOfContinuation.
	previousMatch := aSavedState previousMatch.
	priorLineBraceDepth := aSavedState priorLineBraceDepth.  
	priorLineIndent := aSavedState priorLineIndent