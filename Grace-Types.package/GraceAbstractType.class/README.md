I am the abstract superclass for the hierarchy of objects that describe types.

A collabotrating class is GraceType, which is a subclass of GraceAbstractVariable, and thus can't be here physically.  The typeValue field of a GraceType should be a reference to one of my subinstances (or another GraceType?)

If the type that I represent is defined (in a type declaration) to have type parameters, such as

    type Function[[Arg, Res]] = interface { 
         apply(a:Arg) -> Res
    }

then I record information about the parameterization.

In the above example, the parameters are Arg and Res.  Their names are represented by the instance variable parameterNames, which is an OrderedCollection of Strings.

Once a parameterized type has been instantiated with actual arguments, which is done by requesting the method instantiateWithArguments: aCollectionOfTypes, the instance variable arguments should hold an OrderedCollection of the same size as parameterNames.
