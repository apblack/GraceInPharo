My instances represent the defining occurence of a name, as seen from 
the perspective of an applied occurrence of that name.

- definition: an instance of GraceAbstractVariable, representing the defining occurence.

- levelsUp: the number of levels of lexical nesting above me where the
   defining occurence was found.  0 means that the definiing occurence
   is in the local scope.

- objectsUp: the number of levels of object nesgting above me where the
   defining occurence was found.  0 means that the definiing occurence
   is in the current object, 1 in the outer object, etc.

- isReused: true if the definitionis obtained from a reuse clause, that is, 
  a use of a trait or an inherited object.

