class generation
generateClassHeaderOnto: aToGraceVisitor 
	aToGraceVisitor << 'class ' << classBeingTranslated name << ' {'.
	aToGraceVisitor indent; newline.
	aToGraceVisitor << 'inherit ' << classBeingTranslated superclass name.
	aToGraceVisitor newline.	
