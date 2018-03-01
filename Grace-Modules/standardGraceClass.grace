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

    type String = interface {
        * (n: Number) -> String
        // returns a string that contains n repetitions of self, so "abc" * 3 = "abcabcabc"

        ++(other: Object) -> String
        // returns a string that is the concatenation of self and other.asString

        < (other: String)
        // true if self precedes other lexicographically

        <= (other: String)
        // (self == other) || (self < other)

        == (other: Object)
        // true if other is a String and is equal to self

        != (other: Object)
        // !(self == other)

        > (other: String)
        // true if self follows other lexicographically

        >= (other: String)
        // (self == other) || (self > other)

        at(index: Number) -> String
        // returns the character in position index (as a string of size 1); index must be in the range 1..size

        first -> String
        // returns the first character of the string, as a String of size 1.  String must not be empty

        asDebugString -> String
        // returns self enclosed in quotes, and with embedded special characters quoted.  See also quoted.

        asLower -> String
        // returns a string like self, except that all letters are in lower case

        asNumber -> Number
        // attempts to parse self as a number;  returns that number, or NaN if it can't.

        asString -> String
        // returns self, naturally.

        asUpper -> String
        // returns a string like self, except that all letters are in upper case

        do(action:Function1⟦String, Done⟧) -> Done
        // applies action to each character of self.

        capitalized -> String
        // returns a string like self, except that the initial letters of all words are in upper case

        compare (other:String) -> Number
        // a three-way comparison: -1 if (self < other), 0 if (self == other), and +1 if (self > other).
        // This is useful when writing a comparison function for sortBy

        contains (other:String) -> Boolean
        // returns true if other is a substring of self

        endsWith (possibleSuffix: String)
        // true if self ends with possibleSuffix

        filter (predicate: Function1⟦String,Boolean⟧) -> String
        // returns the String containing those characters of self for which predicate returns true

        fold⟦U⟧ (binaryFunction: Function2⟦U,String,U⟧) startingWith(initial: U) -> U
        // performs a left fold of binaryFunction over self, starting with initial.   
        // For example, fold {a, b -> a + b.ord} startingWith 0 will compute the sum
        // of the ords of the characters in self

        hash -> Number
        // the hash of self

        indexOf (pattern:String) -> Number
        // returns the leftmost index at which pattern appears in self, or 0 if it is not there.

        indexOf⟦W⟧ (pattern:String) ifAbsent (absent:Function0⟦W⟧) -> Number | W
        // returns the leftmost index at which pattern appears in self; applies absent if it is not there.

        indexOf (pattern:String) startingAt (offset) -> Number
        // like indexOf(pattern), except that it returns the first index ≥ offset, or 0 if  pattern is not found.

        indexOf⟦W⟧ (pattern:String) startingAt(offset) ifAbsent (action:Function0⟦W⟧) -> Number | W
        // like the above, except that it returns the result of applying action if there is no such index.

        indices -> Sequence⟦Number⟧
        keys -> Sequence⟦Number⟧
        // an object representing the range of indices of self (1..self.size). 

        isEmpty -> Boolean
        // true if self is the empty string

        iterator -> Iterator⟦String⟧
        // an iterator over the characters of self

        keysAndValuesDo(action:Function2⟦Number, String, Done⟧) -> Done
        // applies action to two arguments for each character in self: the key (index) of the character,
        // and the character itself.

        lastIndexOf (sub:String) -> Number
        // returns the rightmost index at which sub appears in self, or 0 if it is not there.

        lastIndexOf⟦W⟧ (sub:String) startingAt (offset) ->  Number 
        // like the above, except that it returns the rightmost index ≤ offset.

        lastIndexOf⟦W⟧ (sub:String) ifAbsent (absent:Function0⟦W⟧) -> Number | W
        // returns the rightmost index at which sub appears in self; applies absent if it is not there.

        lastIndexOf⟦W⟧ (sub:String)
           startingAt (offset)
           ifAbsent (action:Function0⟦W⟧) ->  Number | W
        // like the above, except that it returns the rightmost index ≤ offset.

        map⟦U⟧ (function:Function1⟦String,U⟧) -> Collection⟦U⟧
        // returns a Collection containing the results of successive applications of function to the
        // individual characters of self. Note that the result is not a String, even if type U happens to be String.
        // If a String is desired, use fold (_) startingWith "" with a function that concatenates.

        matches (other:Object) -> Boolean
        // returns trueif self == other, otherwise false

        ord -> Number
        // a numeric representation of the first character of self, or NaN if self is empty.

        replace (pattern:String) with (new: String) -> String
        // a string like self, but with all occurrences of pattern replaced by new

        size -> Number
        // returns the size of self, i.e., the number of characters it contains.

        startsWith (possiblePrefix:String) -> Boolean
        // true when possiblePrefix is a prefix of self

        startsWithDigit -> Boolean
        // true if the first character of self is a (Unicode) digit.

        startsWithLetter -> Boolean
        // true if the first character of self is a (Unicode) letter

        startsWithPeriod -> Boolean
        // true if the first character of self is a period

        startsWithSpace -> Boolean
        // true if the first character of self is a (Unicode) space.

        substringFrom (start:Number) size (max:Number) -> String
        // returns the substring of self starting at index start and of length max characters,
        // or extending to the end of self if that is less than max.  If start = self.size + 1 or
        // stop < start, the empty string is returned.   If start is outside the range
        // 1..self.size+1, BoundsError is raised.

        substringFrom (start:Number) to (stop:Number) -> String
        // returns the substring of self starting at index start and extending
        // either to the end of self, or to stop.    If start = self.size + 1, or
        // stop < start, the empty string is returned.   If start is outside the range
        // 1..self.size+1, BoundsError is raised.

        substringFrom (start:Number) -> String
        // returns the substring of self starting at index start and extending
        // to the end of self.    If start = self.size + 1, the empty string is returned.
        // If start is outside the range 1..self.size+1, BoundsError is raised.

        trim -> String
        // a string like self except that leading and trailing spaces are omitted.

        quoted -> String
        // returns a quoted version of self, with internal characters like " and \ and newline escaped, 
        // but without surrounding quotes.
    }

    type Number = interface {

        + (other: Number) -> Number
        //  sum of self and other

        - (other: Number) -> Number
        //  difference of self and other

        * (other: Number) -> Number
        //  product of self and other

        / (other: Number) -> Number
        //  quotient of self divided by other (in general, a fraction).

        % (other: Number) -> Number
        //  remainder r after integer division of self by other: 0 ≤ r < self;  see also ÷

        ÷ (other: Number) -> Number
        // quotient q of self after integer division by other: self = (other * q) + r, where r = self % other

        .. (last: Number) -> Sequence
        //  the Sequence of numbers from self to last

        < (other: Number) -> Boolean
        //  true iff self is less than other

        <= (other: Number) -> Boolean
        //  true iff self is less than or equal to other

        > (other: Number) -> Boolean
        //  true iff self is greater than other

        >= (other: Number) -> Boolean
        //  true iff self is greater than or equal to other

        prefix- -> Number
        // negation of self

        compare (other:Number) -> Number
        // a three-way comparison: -1 if (self < other), 0 if (self == other), and +1 if (self > other).
        // This is useful when writing a comparison function for sortBy

        inBase (base:Number) -> String
        // a string representing self as a base number (e.g., 5.inBase 2 = "101")

        asString -> String
        // returns a string representing self rounded to six decimal places

        asDebugString -> String
        // returns a string representing self with all available precision

        asStringDecimals(d) -> String
        // returns a string representing self with exactly d decimal digits

        isInteger -> Boolean
        // true if number is an integer, i.e., a whole number with no fractional part

        truncated -> Number
        // number obtained by throwing away self's fractional part

        rounded -> Number
        // whole number closest to self

        floor -> Number
        // largest whole number less than or equal to self

        ceiling -> Number
        // smallest number greater than or equal to self

        abs -> Number
        // the absolute value of self
        
        sgn -> Number
        // the signum function: 0 when self == 0, 
        // -1 when self < 0, and +1 when self > 0

        isNaN -> Boolean
        // true if this Number is not a number, i.e., if it is NaN

        isEven -> Boolean
        // true if this number is even

        isOdd -> Boolean
        // true if this number is odd
        
        sin -> Number
        // trigonometric sine (self in radians)

        cos -> Number
        // cosine (self in radians)

        tan -> Number
        // tangent (self in radians)

        asin -> Number
        // arcsine of self (result in radians)

        acos -> Number
        // arccosine of self (result in radians)

        atan -> Number
        // arctangent of self (result in radians)

        lg -> Number
        // log base 2 of self

        ln -> Number
        // the natural log of self 

        exp -> Number
        // e raised to the power of self

        log10 (n: Number) -> Number
        // log base 10 of n
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

    type Binding⟦K,T⟧ = {
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

    type Collection⟦T⟧ = Object & type {
        iterator -> Iterator⟦T⟧
            // the iterator on which I am based
        isEmpty -> Boolean
            // true if I have no elements
        size -> Number
            // my size (the number of elements that I contain);
            // may raise SizeUnknown.
        sizeIfUnknown(action: Function0⟦Number⟧)
            // my size; if not known, then the result of applying action
        == (other) -> Boolean
            // other and self have the same size, and contain the same elements.
        first -> T
            // my first element; raises BoundsError if I have none.
        do(body: Procedure1⟦T⟧) -> Done
            // an internal iterator; applies body to each of my elements
        do(body:Procedure1⟦T⟧) separatedBy(separator:Procedure0) -> Done
            // an internal iterator; applies body to each of my elements, and applies separator in between
        ++(other: Collection⟦T⟧) -> Collection⟦T⟧
            // returns a new Collection over the concatenation of self and other
        fold(binaryFunction:Function2⟦T, T, T⟧) startingWith(initial:T) -> T
            // the left-associative fold of binaryFunction over self, starting with initial
        map⟦U⟧(function:Function1⟦T, U⟧) -> Collection⟦U⟧
            // returns a new iterator that yields my elements mapped by function
        filter(condition:Predicate1⟦T⟧) -> Collection⟦T⟧
            // returns a new iterator that yields those of my elements for which condition holds
        >>(target: Collection⟦T⟧) -> Collection⟦T⟧
            // returns the reverse concatentation target ++ self; used for writing pipelines
    }

    type Expandable⟦T⟧ = Collection⟦T⟧ & type {
        add(x: T) -> Self
        addAll(xs: Collection⟦T⟧) -> Self
    }

    type Iterable⟦T⟧ = Collection⟦T⟧    // for backward compatibility

    type Enumerable⟦T⟧ = Collection⟦T⟧ & type {
        values -> Collection⟦T⟧
        keysAndValuesDo(action:Function2⟦Number,T,Object⟧) -> Done
        into(existing: Expandable⟦Unknown⟧) -> Collection⟦Unknown⟧
        sortedBy(comparison:Function2⟦T,T,Number⟧) -> Self
        sorted -> Self
    }

    type Sequence⟦T⟧ = Enumerable⟦T⟧ & type {
        size -> Number
        at(n:Number) -> T
        indices -> Sequence⟦Number⟧
        keys -> Sequence⟦Number⟧
        second -> T
        third -> T
        fourth -> T
        fifth -> T
        last -> T
        indexOf⟦W⟧(elem:T)ifAbsent(action:Function0⟦W⟧) -> Number | W
        indexOf(elem:T) -> Number
        contains(elem:T) -> Boolean
        reversed -> Sequence⟦T⟧
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

    def done = intrinsic.done
    def π = 3.1415926535897932

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

    trait singletonNamed(printString) {
        use generator.singleton
        method asString { printString }
    }

}
