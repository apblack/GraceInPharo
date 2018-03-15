I am the abstract superclass for the hierarchy of objects that describe types.

Another class that is conceptually part of this hierarchy is GraceType, which is a subclass of GraceAbstractVariable, and thus can't be here physically.  The typeValue field of a GraceType should be a reference to one of my subinstances (or another GraceType?)