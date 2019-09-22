I represent an object scope in a Grace program.  I support reuse via
inheritance of objects and use of traits, and hence have an additional
dictionary for reused names.

My instance variables are:
   reusedNames — a dictionary containing as keys all of the names reused 
          (from a trait or superobject) in my scope.  This dictionary 
          is polpulated on demand.
   statusOfReusedNames — one of #undiscovered, #inProgress, or #completed; 
          the state of the process of collecting the reusedNames.