class generation
generateClassHeaderOnto: aToGraceVisitor 
	aToGraceVisitor << 'class ' << classBeingTranslated name << ' {'.
	aToGraceVisitor indent; newline