I replace implicit requests by explicit requests. 

Specifically, each ImplicitRequest node is replaced by an OuterRequest node or a SelfRequest node.  I also signal an exception if the reciever of the implicit request can't be determined, either because the request is not defined in scope, or because it is defined in multiple places.

I update the parse-tree that I am visiting in place.