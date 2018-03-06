dialect "none"
import "intrinsic" as intrinsic
import "collections" as collections
import "basicTypesTrait" as basicTypes

class generator {
    use basicTypes.t

    trait graceObject { use intrinsic.graceObject }

    trait identityEquality {
        method isMe(other) { required } 
        method :: (v) { binding.key(self) value(v) }
        method == (other) { isMe(other) }
        method ≠ (other) { (self == other).not }
        method hash { self.identityHash }
    }

    type Object = interface {
        asString -> String
        asDebugString -> String
    }

    type Done = interface {
        asString -> String
        asDebugString -> String
    }

    type Type = Unknown

    type Pattern = {
        & (other:Pattern) -> Pattern
        | (other:Pattern) -> Pattern
        matches(value:Object) -> Boolean
    }

    type ExceptionKind = Pattern & interface {
        refine (description:String) -> ExceptionKind
        parent -> ExceptionKind
        raise (message:String) -> Done
        raise (message:String) with (argument:Object) -> Done
    }

    type EqualityObject = Object & interface {
        ::(_:Object) -> Binding
        ==(_:Object) -> Boolean
        ≠(_:Object) -> Boolean
        hash -> Number
    }

    type Boolean =  {
        not -> Boolean
        prefix ! -> Boolean
        // the negation of self

        && (other: Boolean | Predicate0) -> Boolean
        // returns true when self and other are both true

        || (other: Boolean | Predicate0) -> Boolean
        // returns true when either self or other (or both) are true

        ifTrue⟦T⟧ (trueBlock:Procedure0⟦T⟧) ifFalse (falseBlock:Procedure0⟦T⟧) -> T
    }

    def binding is public = object {
        method asString { "binding class" }

        class key(k)value(v) {
            method key {k}
            method value {v}
            method asString { "{k}::{v}" }
            method hash { (k.hash * 1021) + v.hash }
            method == (other) {
                if (Binding.match(other)) then { 
                    (k == other.key) && (v == other.value) 
                } else { 
                    false 
                }
            }
        }
    }

    type List⟦T⟧ = Sequence⟦T⟧ & type {
        add(x: T) -> List⟦T⟧
        addAll(xs: Collection⟦T⟧) -> List⟦T⟧
        addFirst(x: T) -> List⟦T⟧
        addAllFirst(xs: Collection⟦T⟧) -> List⟦T⟧
        addLast(x: T) -> List⟦T⟧    // same as add
        at(ix:Number) put(v:T) -> List⟦T⟧
        clear -> List⟦T⟧
        removeFirst -> T
        removeAt(n: Number) -> T
        removeLast -> T
        remove(v:T)
        remove(v:T) ifAbsent(action:Procedure0)
        removeAll(vs: Collection⟦T⟧)
        removeAll(vs: Collection⟦T⟧) ifAbsent(action:Function0⟦Unknown⟧)
        pop -> T
        ++(o: List⟦T⟧) -> List⟦T⟧
        copy -> List⟦T⟧
        sort -> List⟦T⟧
        sortBy(sortBlock:Function2⟦T,T,Number⟧) -> List⟦T⟧
        reverse -> List⟦T⟧
        reversed -> List⟦T⟧
    }

    type Set⟦T⟧ = Collection⟦T⟧ & type {
        size -> Number
        add(x:T) -> Self
        addAll(elements: Collection⟦T⟧) -> Self
        remove(x: T) -> Self
        remove(x: T) ifAbsent(block: Procedure0) -> Self
        clear -> Self
        includes(booleanBlock: Predicate1⟦T⟧) -> Boolean
        find(booleanBlock: Predicate1⟦T⟧) ifNone(notFoundBlock: Function0⟦T⟧) -> T
        copy -> Self
        contains(elem:T) -> Boolean
        ** (other:Set⟦T⟧) -> Self
        -- (other:Set⟦T⟧) -> Self
        ++ (other:Set⟦T⟧) -> Self
        isSubset(s2: Collection⟦T⟧) -> Boolean
        isSuperset(s2: Collection⟦T⟧) -> Boolean
        removeAll(elems: Collection⟦T⟧) -> Self
        removeAll(elems: Collection⟦T⟧) ifAbsent(action:Procedure0) -> Self
        into(existing: Expandable⟦Unknown⟧) -> Collection⟦Unknown⟧
    }

    type Dictionary⟦K,T⟧ = Collection⟦T⟧ & type {
        size -> Number
        containsKey(k:K) -> Boolean
        containsValue(v:T) -> Boolean
        contains(elem:T) -> Boolean
        at(key:K)ifAbsent(action:Function0⟦Unknown⟧) -> Unknown
        at(key:K)put(value:T) -> Self
        at(k:K) -> T
        removeAllKeys(keys: Collection⟦K⟧) -> Self
        removeKey(key:K) -> Self
        removeAllValues(removals: Collection⟦T⟧) -> Self
        removeValue(v:T) -> Self
        clear -> Self
        keys -> Enumerable⟦K⟧
        values -> Enumerable⟦T⟧
        bindings -> Enumerable⟦Binding⟦K,T⟧⟧
        keysAndValuesDo(action:Procedure2⟦K,T⟧) -> Done
        keysDo(action:Procedure1⟦K⟧) -> Done
        valuesDo(action:Procedure1⟦T⟧) -> Done
        == (other:Object) -> Boolean
        copy -> Self
        ++ (other:Dictionary⟦K, T⟧) -> Self
        -- (other:Dictionary⟦K, T⟧) -> Self
    }

    type Iterator⟦T⟧ = type {
        hasNext -> Boolean
        next -> T
    }

    method if (cond) then (action) {
        cond.ifTrue (action)
    }

    method if (cond) then (trueAction) else (falseAction) {
        cond.ifTrue (trueAction) ifFalse (falseAction)
    }


    method if (cond1) then (action1) elseif (cond2) then (action2) {
        if (cond1) then (action1) else {
            if (cond2) then (action2) 
                else {}
        }
    }
      
    method if (cond1) then (action1) 
            elseif (cond2) then (action2) 
            else (fallbackAction) {
        if (cond1) then (action1) else {
            if (cond2) then (action2) 
                else (fallbackAction)
        }
    }

    method if(cond1) then (action1) elseif(cond2) then (action2)
            elseif (cond3) then (action3) {
        if (cond1) then (action1) elseif (cond2) then (action2) else {
            if (cond3) then (action3)
        }
    }

    method if (cond1) then (action1) 
            elseif (cond2) then (action2) 
            elseif (cond3) then (action3) 
            else (fallbackAction) {
        if (cond1) then (action1) elseif (cond2) then (action2) else {
            if (cond3) then (action3) else (fallbackAction)
        }
    }

    method if (cond1) then (action1) 
            elseif (cond2) then (action2) 
            elseif (cond3) then (action3)
            elseif (cond4) then (action4)
            else (fallbackAction) {
        if (cond1) then (action1) elseif (cond2) then (action2) 
              elseif (cond3) then (action3) else {
            if (cond4) then (action4) else (fallbackAction)
        }
    }

    method match (subject) case (case1) {
        if (case1.matches(subject)) then {
            case1.apply(subject)
        } else {
            ProgrammingError.raise "non-exhaustive match"
        }
    }

    method match (subject) case (case1) case (case2) {
        if (case1.matches(subject)) then {
            case1.apply(subject)
        } else {
            match (subject) case (case2)
        }
    }

    method match (subject) case (case1) case (case2) case (case3) {
        if (case1.matches(subject)) then {
            case1.apply(subject)
        } else {
            match (subject) case (case2) case (case3)
        }
    }


    method match (subject) case (case1) case (case2) case (case3) 
            case (case4) {
        if (case1.matches(subject)) then {
            case1.apply(subject)
        } else {
            match (subject) case (case2) case (case3) case (case4)
        }
    }

    method match (subject) case (case1) case (case2) case (case3) 
            case (case4) case (case5) {
        if (case1.matches(subject)) then {
            case1.apply(subject)
        } else {
            match (subject) case (case2) case (case3) 
                case (case4) case (case5)
        }
    }

    method match (subject) case (case1) case (case2) case (case3) 
            case (case4) case (case5) case (case6) {
        if (case1.matches(subject)) then {
            case1.apply(subject)
        } else {
            match (subject) case (case2) case (case3) 
                case (case4) case (case5) case (case6)
        }
    }

    method match (subject) case (case1) case (case2) case (case3) 
            case (case4) case (case5) case (case6) case (case7) {
        if (case1.matches(subject)) then {
            case1.apply(subject)
        } else {
            match (subject) case (case2) case (case3) 
                case (case4) case (case5) case (case6) case (case7)
        }
    }

    method match (subject) case (case1) case (case2) case (case3) 
            case (case4) case (case5) case (case6) case (case7)
            case (case8) {
        if (case1.matches(subject)) then {
            case1.apply(subject)
        } else {
            match (subject) case (case2) case (case3) 
                case (case4) case (case5) case (case6) case (case7)
                case (case8)
        }
    }

    method match (subject) case (case1) case (case2) case (case3)
            case (case4) case (case5) case (case6) case (case7)
            case (case8) case (case9) {
        if (case1.matches(subject)) then {
            case1.apply(subject)
        } else {
            match (subject) case (case2) case (case3) 
                case (case4) case (case5) case (case6) case (case7)
                case (case8) case (case9)
        }
    }

    method try (aBlock:Procedure0) catch (catchBlock1:Function1) {
        intrinsic.try (aBlock) catch (catchBlock1) finally { }
    }

    method try (aBlock:Procedure0) catch (catchBlock1:Function1)
            finally (finallyBlock:Function0) {
        intrinsic.try (aBlock) catch (catchBlock1) finally (finallyBlock)
    }

    method try (aBlock:Procedure0) 
            catch (catchBlock1:Function1) 
            catch (catchBlock2:Function1) {
        intrinsic.try (aBlock) catch {ex ->
            match (ex) case (catchBlock1) case(catchBlock2)
        } finally { }
    }

    method try (aBlock:Procedure0) 
            finally (finallyBlock1:Function0) {
        intrinsic.try (aBlock) catch {(false) ->      
        } finally { finallyBlock1 }
    }

    method while(cond) do(block) { 
        intrinsic.while(cond) do(block)
    }

    method do(action) while(condition) {
        while {
            action.apply
            condition.apply
        } do { }
    }

    method repeat(n) times(action) {
        var ix := n
        while {ix > 0} do {
            ix := ix - 1
            action.apply
        }
    }

    method for (cs) and (ds) do (action) -> Done {
        def dIter = ds.iterator
        cs.do { c-> 
            if (dIter.hasNext) then {
                action.apply(c, dIter.next)
            } else {
                return
            }
        }
    }

    method for(collection) do(block) {
        collection.do(block)
    }

    method abstract {
        SubobjectResponsibility.raise "abstract method not overriden by subobject"
    }

    method required {
        SubobjectResponsibility.raise "required method not overriden by subobject"
    }

    method min(a, b) {
        if (a < b) then {a} else {b}
    }

    method max(a, b) {
        if (a > b) then {a} else {b}
    }

    def Exception is public = intrinsic.Exception
    def ProgrammingError is public = intrinsic.ProgrammingError
    def EnvironmentException is public = intrinsic.EnvironmentException
    def TypeError is public = intrinsic.TypeError
    def UninitializedVariable is public = intrinsic.UninitializedVariable
    def SubobjectResponsibility is public = ProgrammingError.refine "SubobjectResponsibility"
    def NoSuchMethod is public = intrinsic.NoSuchMethod

    def RequestError is public = intrinsic.RequestError

    def NoSuchObject is public = collections.NoSuchObject
    def BoundsError is public = collections.BoundsError

    def done is public = intrinsic.done
    def π is public = 3.1415926535897932
    def infinity is public = 1/0


    method print (string) { intrinsic.print (string) }

    method sequence⟦T⟧ { collections.sequence⟦T⟧ }
    method list⟦T⟧ { collections.list⟦T⟧ }
    method set⟦T⟧ { collections.set⟦T⟧ }
    method dictionary⟦K,V⟧ { collections.dictionary⟦K,V⟧ }
    method range { collections.range }

    method valueOf (nullaryBlock) {
        nullaryBlock.apply
    }

    trait basicPattern {
        method &(o) {
            andPattern(self, o)
        }
        method |(o) {
            orPattern(self, o)
        }
    }

    trait orPattern(p1, p2) {
        use generator.basicPattern
        method matches(o) { p1.match(o) || { p2.match(o) }
        }
    }

    trait andPattern(p1, p2) {
        use generator.basicPattern
        method matches(o) { p1.matches(o) && { p2.matches(o) } }   
    }

    trait singleton {
        use generator.basicPattern
        use generator.identityEquality
        method matches(other) {
            self == other
        }
        method ==(other) { self.isMe(other) }
    }

    trait singleton (printString) {
        use generator.singleton
        method asString { printString }
    }

}
