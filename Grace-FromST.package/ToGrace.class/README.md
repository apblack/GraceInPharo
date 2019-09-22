This class tramnslates Smalltalk code to Grace.

It does a 90% job; you will have to fix up the Grace code by hand in several places.  One is th euse of the message #class, which is illegal in Grace.   Because there is no explicit relationship between classes and instances in Grace, removing sends of #class will normally require some rework.

#initialize methods will typically need to be converted into top-level code in the class body.  All instance variables are declared as Grace 'var's; some of these var declarations shoudl be removed, and replaced by 'def' declaratrions at the place where the variable is initialized.

Several of the class methods are scripts that privoide examples of the use of this class.

The chief collaborator is the ToGraceVisitor class, which walks the Smalltalk AST and generates the Grace code.  