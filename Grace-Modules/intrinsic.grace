dialect "none"

trait graceObject { 
    method asString { ... }
    method asDebugString { ... }
    method isMe(other) is confidential { ... }
    method identityHash is confidential { ... }
}

def done is public = object {
    method asString { "done" }
    method asDebugString { asString }
}

method if (cond) then (trueBlock) else (falseBlock) {
    cond.ifTrue (trueBlock) ifFalse (falseBlock)
}

method while (cond) do (block) { ... }

method Exception { ... }
method print { ... }


def ProgrammingError is public = Exception.refine "ProgrammingError"
def EnvironmentException is public = Exception.refine "EnvironmentException"
def UninitializedVariable is public = ProgrammingError.refine "UninitializedVariable"

def TypeError is public = ProgrammingError.refine "TypeError"

def RequestError is public = ProgrammingError.refine "RequestError"

def NoSuchMethod is public = ProgrammingError.refine "NoSuchMethod"

