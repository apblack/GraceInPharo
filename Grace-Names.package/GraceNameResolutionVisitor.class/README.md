An abstract superclass for the various visitors used to do name resolution.  Its primary purpose is to make a place to put the error methods that are used by more than one visitor.

(Why can't these error methods go in the GraceRootNodeVisitor?  Because it is in the Grace-Parser package, so doing that would introduce a circular dependency.)

The Ancestors visitor does nothing but record the route back to the root node of the parse tree, on the stack `ancestors`.  It's useful if there are no up-links in the tree.

The Build Scopes visitor creates a scope in each node that defines one, and links these scopes on a lexical chain.  It populates the object scopes with the attributes that they define, but not with those that they reuse.

The Reuse Visitor is responsible for inserting the reused attributesinto the scopes.  This is a separate visitation of the tree, because it relies on the information collected by the Build Scopes visitation. 

Once the scopes are populated, the Disambiguaiton visitor re-writes Implicit Requests into Explicit Requests,  or complains that they are ill-formed or ambiguous.

The Checking visitor implement various checks that don't seem to fit into the other visitors.