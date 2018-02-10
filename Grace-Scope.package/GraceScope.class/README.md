I represent a declaration scope in a Grace program

names — a dictionary containing as keys all of the names declared in my scope.  The values are the Grace variable objects that respresent the declaration.

reusedNames — a dictionary containing as keys all of the names reused ( from a trait or superobject) in my scope.  This dictionary is polpulated on-demand.

statusOfReusedNames is a symbol: #undiscovered, #inProgress, or #completed, that respresents the process of collecting the reusedNames.