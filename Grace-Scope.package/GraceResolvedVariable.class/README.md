My instances represent the defining occurence of a name, as seen from 
the perspective of an applied occurrence of that name.

- definition: an subinstance of GraceAbstractVariable, representing the defining occurence.

- objectsUp: the number of levels of object nesting above me where the
   defining occurence was found.  0 means that the definiing occurence
   is in the current object, 1 in the outer object, etc.

- isReused: true if the definition is obtained from a use of a trait, or from
   an inherited object.

