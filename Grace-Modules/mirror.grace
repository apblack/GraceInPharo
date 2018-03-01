type ObjectMirror = Object & interface {
    sourceRange -> Range
    moduleName -> String
    attributes -> Dictionary⟦String, AttributeMirror⟧
    methodNames -> Set⟦String⟧
    defNames -> Set⟦String⟧
    varNames -> Set⟦String⟧
    typeNames -> Set⟦String⟧
    attributeMirror(canonicalName:String) -> AttributeMirror
}

type AttributeMirror = Object & interface {
    name -> String
    sourceRange -> Range
    moduleName -> String
    isField -> Boolean
    isVariable -> Boolean
    isDefinition -> Boolean
    isType -> Boolean
    parameters -> Sequence⟦ParameterMirror⟧
    typeParameters -> Sequence⟦ParameterMirror⟧
    request -> Unknown
    request(args:ArgList) -> Unknown
    typeSignature -> Signature
}

type Signature = Object & interface {
    parameters -> Sequence⟦Type⟧
    result -> Type
    numberOfTypeParameters -> Number
}


type ParameterMirror = Object & interface {
    name -> String
    typeAnnotation -> Type
}

type ArgList = Sequence⟦Unknown⟧

type Range = interface {
    startPosition -> Point      // line @ column
    stopPosition -> Point
}

method loadModule(moduleName:String) -> Unknown { }

class reflect(obj:Unknown) -> ObjectMirror {
    method sourceRange -> Range { ... }
    method moduleName -> String { ... }
    method attributes -> Dictionary⟦String, AttributeMirror⟧ { ... }
    method methodNames -> Set⟦String⟧ { ... }
    method defNames -> Set⟦String⟧ { ... }
    method varNames -> Set⟦String⟧ { ... }
    method typeNames -> Set⟦String⟧ { ... }

    class attributeMirror(nm:String) -> AttributeMirror {
        method name -> String { ... }
        method sourceRange -> Range { ... }
        method moduleName -> String { ... }
        method isField -> Boolean { isVariable || isDefinition }
        method isVariable -> Boolean { ... }
        method isDefinition -> Boolean { ... }
        method isType -> Boolean { ... }
        method parameters -> Sequence⟦ParameterMirror⟧ { ... }
        method typeParameters -> Sequence⟦ParameterMirror⟧ { ... }
        method request -> Unknown { request (sequence.empty) }
        method request(args:ArgList) -> Unknown { ... }
    }
}
