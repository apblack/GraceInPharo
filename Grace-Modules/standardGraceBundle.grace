dialect "none"
import "intrinsic" as intrinsic
import "collections" as collections
import "basicDefinitionsBundle" as basicBundle

class open {
    use basicBundle.open

    def override is annotation

    trait identityEquality {
        method isMe(other) is required 
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

    type Function0⟦ResultT⟧  = interface {
        apply -> ResultT     // Function with no arguments and a result of type ResultT
        //  matches -> Boolean   // answers true
    }
    type Function1⟦ArgT1, ResultT⟧ = interface {
        apply(a1:ArgT1) -> ResultT    // Function with argument a1 of type ArgT1, and a result of type ResultT
        //  matches(a1:Object) -> Boolean   // answers true if a1 <: ArgT1
    }
    type Function2⟦ArgT1, ArgT2, ResultT⟧ = interface {
        apply(a1:ArgT1, a2:ArgT2) -> ResultT
        // Function with arguments of types ArgT1 and ArgT2, and a result of type ResultT
        //  matches(a1:Object, a2:Object) -> Boolean
            // answers true if a1 <: ArgT1 and a2 <: ArgT2
    }
    type Function3⟦ArgT1, ArgT2, ArgT3, ResultT⟧  = interface {
        apply(a1:ArgT1, a2:ArgT2, a3:ArgT3) -> ResultT
        //  matches(a1:Object, a2:Object, a3:Object) -> Boolean
            // answers true if a1 <: ArgT1 and a2 <: ArgT2 and a3 :< ArgT3
    }

    // Procedures are fuctions that have no result

    type Procedure0 = Function0⟦Done⟧
        // Function with no arguments and no result
    type Procedure1⟦ArgT1⟧ = Function1⟦ArgT1, Done⟧
        // Function with 1 argument of type ArgT1, and no result
    type Procedure2⟦ArgT1, ArgT2⟧ = Function2⟦ArgT1, ArgT2, Done⟧ 
        // Function with 2 arguments of types ArgT1 and ArgT2, and no result
    type Procedure3⟦ArgT1, ArgT2, ArgT3⟧ = Function3⟦ArgT1, ArgT2, ArgT3, Done⟧

    // Predictates are functions that return a Boolean

    type Predicate0 = Function0⟦Boolean⟧
        // Function with no arguments returning Boolean
    type Predicate1⟦ArgT1⟧ = Function1⟦ArgT1, Boolean⟧
        // Function with 1 argument of type ArgT1, returning Boolean
    type Predicate2⟦ArgT1, ArgT2⟧ = Function2⟦ArgT1, ArgT2, Boolean⟧
        // Function with 2 arguments of types ArgT1 and ArgT2, returning Boolean
    type Predicate3⟦ArgT1, ArgT2, ArgT3⟧ = Function3⟦ArgT1, ArgT2, ArgT3, Boolean⟧
        // Function with 3 arguments of types ArgT1, ArgT2, and ArgT3, returning Boolean

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

    type Binding⟦K,T⟧ = interface {
        key -> K
        value -> T
        hash -> Number
        ==(other) -> Boolean
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

    type List⟦T⟧ = collections.list⟦T⟧
    type Set⟦T⟧ = collections.Set⟦T⟧
    type Dictionary⟦K,T⟧ = collections.Dictionary⟦T⟧

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
        collections.do(block)
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
        use open.basicPattern
        method matches(o) { p1.match(o) || { p2.match(o) }
        }
    }

    trait andPattern(p1, p2) {
        use open.basicPattern
        method matches(o) { p1.matches(o) && { p2.matches(o) } }   
    }

    trait singleton {
        use open.basicPattern
        use open.identityEquality
        method matches(other) {
            self == other
        }
        method ==(other) { self.isMe(other) }
    }

    trait singleton (printString) {
        use open.singleton
        method asString { printString }
    }

}
