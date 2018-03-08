I represent the whole grace compiler.

At present, I scan the input, parse it (building a parse three) and then run several visitors over that tree to perform various checks, collect symbol table information, and decorate and in some places change the nodes in the tree.

More visitrs will be added over time.