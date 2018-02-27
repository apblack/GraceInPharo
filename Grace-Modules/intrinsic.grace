dialect "none"

trait graceObject { 
    method asString { ... }
    method asDebugString { ... }
    method isMe(other) is confidential { ... }
    method identityHash is confidential { ... }
}

def done = object {
    method asString { "done" }
    method asDebugString { asString }
}

method if (cond) then (trueBlock) else (falseBlock) {
    cond.ifTrue (trueBlock) ifFalse (falseBlock)
}

method while (cond) do (block) { ... }

method Exception { ... }
method print { ... }

