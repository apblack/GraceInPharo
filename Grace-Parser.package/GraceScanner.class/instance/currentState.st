privileged
currentState
	"Save the state, creating a state object for this purpose."
	
	^ self newScannerState
		braceChange: braceChange;
		currentLineBraceDepth: currentLineBraceDepth;
		indentOfLineBeingContinued: indentOfLineBeingContinued;
		indentStack: indentStack copy;
		maxIndentOfContinuation: maxIndentOfContinuation;
		previousMatch: previousMatch;
		priorLineBraceDepth: priorLineBraceDepth;
		priorLineIndent: priorLineIndent;
		yourself