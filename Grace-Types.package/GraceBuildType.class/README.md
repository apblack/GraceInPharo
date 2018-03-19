I construct type objects (sub-instances of GraceAbstractType) from parse tree nodes.

I'm not really a visitor, since I examine only a single node at a time (although I may use new instances of my class to construct type objects from sub-nodes).  But I use the acceptVisitor: -- visitXXX: to do double-dispatch, to get the approriate kind of type object for each kind of node. 