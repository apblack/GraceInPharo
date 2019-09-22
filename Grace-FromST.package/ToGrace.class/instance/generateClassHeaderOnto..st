class generation
generateClassHeaderOnto: aToGraceVisitor
	aToGraceVisitor << 'class ' << classBeingTranslated nameForGrace << ' {'.
	aToGraceVisitor indent; newline.
	aToGraceVisitor << 'inherit ' << classBeingTranslated superclass nameForGrace.
	aToGraceVisitor newline.	
