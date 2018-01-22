I add reused names to object scopes.

Reused names are those that are made available through trait use or inherit statements.  I visit the parse tree, and expect the scopes to already have been created and populated with local declarations by the BuildScopesVisitor.

I must deal with a potential circularity.  Finding the target of the superExpression in the reuse statement means doing a scope lookup.  Is it possible that the target is defined by reuse, and therefore requires that resused names already be in the scopes?   Scopes are built on demand to avoid this problem.