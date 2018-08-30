line handling
saveDataForPriorLine
	
	priorLineBraceDepth := priorLineBraceDepth + braceChange.
	priorLineIndent := currentLineIndent.
	unmatchedLeftBraces := 0.