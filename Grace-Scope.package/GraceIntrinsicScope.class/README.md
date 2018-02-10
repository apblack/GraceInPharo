This scope represents the objects that must be built-in to SmallGrace.

It is set up by its initialization code, not by the scope-building visitor.
Logically, you might think that the intrinsic scope should be a subclass of Module scope, becuse the intrinsics behave like a module.  But modules need an attribute 'intrinsic' that is bound to an intrinsic scope, so this would lead to a circularity.