dialect "none"

// This module defines a trait that can be used by any module that needs
// to access the definitions of the basic types, and annotations.  These
// definitions are re-exported  by standardGrace, so this module is mostly
// useful when implementing a module that is _not_ written in standardGrace.
// In particular, this module is imported by intrinsic as well as by standardGrace.

trait open {
   
    method annotation is annotation
    method public is annotation
    method readable is annotation
    method writable is annotation
    method confidential is annotation
    method required is annotation
    method abstract is annotation

    type Object = interface {
        asString -> String
        asDebugString -> String
    }

    type Done = interface {
        asString -> String
        asDebugString -> String
    }

    type EqualityObject = Object & interface {
        ::(_:Object) -> Binding
        ==(_:Object) -> Boolean
        ≠(_:Object) -> Boolean
        hash -> Number
    }

    type Boolean =  EqualityObject & interface {
        not -> Boolean
        prefix ! -> Boolean
        // the negation of self

        && (other: Boolean | Predicate0) -> Boolean
        // returns true when self and other are both true

        || (other: Boolean | Predicate0) -> Boolean
        // returns true when either self or other (or both) are true
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

        @ (other: Number) -> Point
        //  answers a 2D-point (x, y) with x = self, and y = other

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

    type Point =  {

        x -> Number  // the x-coordinates of self

        y -> Number  // the y-coordinate of self

        == (other:Object) -> Boolean
        // true if other is a Point with the same x and y coordinates as self.

        + (other:Point|Number) -> Point
        // if other is a Point, returns the Point that is the vector sum of self
        // and other, i.e. (self.x+other.x) @ (self.y+other.y).  If other is a Number,
        // returns the point (self.x+other) @ (self.y+other)

        - (other:Point|Number) -> Point
        // if other is a Point, returns the Point that is the vector difference of
        // self and other, i.e. (self.x-other.x) @ (self.y-other.y). If other is a
        // Number, returns the point (self.x-other) @ (self.y-other)


        prefix- -> Point
        // the negation of self
        
        * (factor:Number) -> Point
        // this point scaled by factor, i.e. (self.x*factor) @ (self.y*factor)
        
        / (factor:Number) -> Point
        // this point scaled by 1/factor, i.e. (self.x/factor) @ (self.y/factor)

        length -> Number
        // distance from self to the origin

        distanceTo(other:Point) -> Number
        // distance from self to other

        dot (other:Point) -> Number
        ⋅ (other:Point) -> Number
        // dot product of self and other

        norm -> Point
        // the unit vector (vecor of length 1) in same direction as self

        hash -> Number
        // the hash of self
    }

    // FunctionX types are what used to be called BlockX types; X is the number of
    // arguments that must be supplied.

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

    // Procedures are functions that have no (interesting) result

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

    type Binding⟦K,T⟧ = EqualityObject & interface {
        key -> K
        value -> T
    }
    type Collection⟦T⟧ = Object & interface {
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

    type Iterator⟦T⟧ = type {
        hasNext -> Boolean
        next -> T
    }

    type Enumerable⟦T⟧ = Collection⟦T⟧ & type {
        values -> Collection⟦T⟧
        keysAndValuesDo(action:Procedure2⟦Number,T⟧) -> Done
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
        reversed -> Self
    }
}
