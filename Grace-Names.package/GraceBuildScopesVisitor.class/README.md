I build the "scopes" for the nodes in the parse tree.  Scopes are also know as symbol tables.

I know about parse tree nodes that create scopes, and about the declarations that can appear in thise scopes.  I add entries to the scopes corresponding to the declarations.   I don't know about trait use and 
inheritance; that is the responsibility of the GraceReuseVisitor.

I am a visitor, and thus inherit (indirectly) from GraceRootNodeVisitor
