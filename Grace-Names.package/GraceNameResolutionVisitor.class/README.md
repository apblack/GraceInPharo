An abstract superclass for the visotors used to do name 
resolution.  Its primary purpose is to make a place to
put the error methods that are used by more than one visitor.

(Why can't these error methods go in the GraceRootNodeVisitor?  Because it is in the Grace-Parser package, so doing that would intorduce a circular dependency.)