dialect "none"
import "intrinsic" as intrinsic
import "basicTypesTrait" as basicTypesTrait

use basicTypesTrait.t

type List⟦T⟧ = Sequence⟦T⟧ & type {
    add(x: T) -> Self
    addAll(xs: Collection⟦T⟧) -> Self
    addFirst(x: T) -> Self
    addAllFirst(xs: Collection⟦T⟧) -> Self
    addLast(x: T) -> Self    // same as add
    at(ix:Number) put(v:T) -> Self
    clear -> Self
    removeFirst -> T
    removeAt(n: Number) -> T
    removeLast -> T
    remove(v:T)
    remove(v:T) ifAbsent(action:Procedure0)
    removeAll(vs: Collection⟦T⟧)
    removeAll(vs: Collection⟦T⟧) ifAbsent(action:Function0⟦Unknown⟧)
    pop -> T
    ++(o: Collection⟦T⟧) -> Self
    copy -> Self
    sort -> Self
    sortBy(sortBlock:Function2⟦T,T,Number⟧) -> Self
    reverse -> Self
    reversed -> Self
}

type Set⟦T⟧ = Collection⟦T⟧ & type {
    size -> Number
    add(x:T) -> Self
    addAll(elements: Collection⟦T⟧) -> Self
    remove(x: T) -> Set⟦T⟧
    remove(x: T) ifAbsent(block: Procedure0) -> Set⟦T⟧
    clear -> Set⟦T⟧
    includes(booleanBlock: Predicate1⟦T⟧) -> Boolean
    find(booleanBlock: Predicate1⟦T⟧) ifNone(notFoundBlock: Function0⟦T⟧) -> T
    copy -> Set⟦T⟧
    contains(elem:T) -> Boolean
    ** (other:Set⟦T⟧) -> Set⟦T⟧
    -- (other:Set⟦T⟧) -> Set⟦T⟧
    ++ (other:Set⟦T⟧) -> Set⟦T⟧
    isSubset(s2: Set⟦T⟧) -> Boolean
    isSuperset(s2: Collection⟦T⟧) -> Boolean
    removeAll(elems: Collection⟦T⟧)
    removeAll(elems: Collection⟦T⟧)ifAbsent(action:Procedure0) -> Set⟦T⟧
    into(existing: Expandable⟦Unknown⟧) -> Collection⟦Unknown⟧
}

type Dictionary⟦K,T⟧ = Collection⟦T⟧ & type {
    size -> Number
    containsKey(k:K) -> Boolean
    containsValue(v:T) -> Boolean
    contains(elem:T) -> Boolean
    at(key:K)ifAbsent(action:Function0⟦Unknown⟧) -> Unknown
    at(key:K)put(value:T) -> Dictionary⟦K,T⟧
    at(k:K) -> T
    removeAllKeys(keys: Collection⟦K⟧) -> Dictionary⟦K,T⟧
    removeKey(key:K) -> Dictionary⟦K,T⟧
    removeAllValues(removals: Collection⟦T⟧) -> Dictionary⟦K,T⟧
    removeValue(v:T) -> Dictionary⟦K,T⟧
    clear -> Dictionary⟦K,T⟧
    keys -> Enumerable⟦K⟧
    values -> Enumerable⟦T⟧
    bindings -> Enumerable⟦Binding⟦K,T⟧⟧
    keysAndValuesDo(action:Procedure2⟦K,T⟧) -> Done
    keysDo(action:Procedure1⟦K⟧) -> Done
    valuesDo(action:Procedure1⟦T⟧) -> Done
    == (other:Object) -> Boolean
    copy -> Dictionary⟦K,T⟧
    ++ (other:Dictionary⟦K, T⟧) -> Dictionary⟦K, T⟧
    -- (other:Dictionary⟦K, T⟧) -> Dictionary⟦K, T⟧
}

method if (cond) then (trueAction) {
    cond.ifTrue (trueAction)
}

method if (cond) then (trueAction) else (falseAction) {
    cond.ifTrue (trueAction) ifFalse (falseAction)
}

method while (condition) do (action) { intrinsic.while (condition) do (action) }


def ProgrammingError = intrinsic.Exception.refine "ProgrammingError"
def BoundsError is public = ProgrammingError.refine "BoundsError"
def IteratorExhausted is public = ProgrammingError.refine "IteratorExhausted"
def SubobjectResponsibility is public = ProgrammingError.refine "SubobjectResponsibility"
def NoSuchObject is public = ProgrammingError.refine "NoSuchObject"
def RequestError is public = ProgrammingError.refine "RequestError"
def ConcurrentModification is public = ProgrammingError.refine "ConcurrentModification"
def SizeUnknown is public = intrinsic.Exception.refine "SizeUnknown"

method required is confidential {
    SubobjectResponsibility.raise "required method not overriden by subobject"
}

class lazySequenceOver⟦T,R⟧ (source: Collection⟦T⟧)
        mappedBy (function:Function1⟦T, R⟧) -> Enumerable⟦R⟧ is confidential {
    use enumerable⟦T⟧
    class iterator {
        def sourceIterator = source.iterator
        method asString { "an iterator over a lazy map sequence" }
        method hasNext { sourceIterator.hasNext }
        method next { function.apply(sourceIterator.next) }
    }
    method size { source.size }
    method isEmpty { source.isEmpty }
    method asDebugString { "a lazy sequence mapping over {source}" }
}

class lazySequenceOver⟦T⟧ (source: Collection⟦T⟧)
        filteredBy(predicate:Predicate1⟦T⟧) -> Enumerable⟦T⟧ is confidential {
    use enumerable⟦T⟧
    class iterator {
        var cache
        var cacheLoaded := false
        def sourceIterator = source.iterator
        method asString { "an iterator over filtered {source}" }
        method hasNext {
        // To determine if this iterator has a next element, we have to find
        // an acceptable element; this is then cached, for the use of next
            if (cacheLoaded) then { true } else { hasNextAcceptableElement }
        }
        method next {
            if (cacheLoaded.not) then { cache := nextAcceptableElement }
            cacheLoaded := false
            return cache
        }
        method nextAcceptableElement is confidential {
        // return the next element of the underlying iterator satisfying
        // predicate; if there is none, raises IteratorExhausted.
            while { true } do {
                def outerNext = sourceIterator.next
                def isAcceptable = predicate.apply(outerNext)
                if (isAcceptable) then { return outerNext }
            }
        }
        method hasNextAcceptableElement is confidential {
        // returns true is there is another element in the underlying iterator
        // satisfying predicate, otherwise false
            while { true } do {
                if (sourceIterator.hasNext.not) then { return false }
                def outerNext = sourceIterator.next
                def isAcceptable = predicate.apply(outerNext)
                if (isAcceptable) then {
                    cacheLoaded := true
                    cache := outerNext
                    return true
                }
            }
        }
    }
    method asDebugString { "a lazy sequence filtering {source}" }
}

class iteratorConcat⟦T⟧(left:Iterator⟦T⟧, right:Iterator⟦T⟧) {
    method next {
        if (left.hasNext) then {
            left.next
        } else {
            right.next
        }
    }
    method hasNext {
        if (left.hasNext) then { return true }
        return right.hasNext
    }
    method asDebugString { "iteratorConcat of {left} and {right}" }
    method asString { "an iterator over a concatenation" }
}
class lazyConcatenation⟦T⟧(left, right) -> Enumerable⟦T⟧{
    use enumerable⟦T⟧
    method iterator {
        iteratorConcat(left.iterator, right.iterator)
    }
    method asDebugString { "lazy concatenation of {left} and {right}" }
    method size { left.size + right.size }  // may raise SizeUnknown
}

trait collection⟦T⟧ {
    
    method asString { "a collection trait" }
    method sizeIfUnknown(action) {
        action.apply
    }
    method size {
        SizeUnknown.raise "collection {asDebugString} does not know its size"
    }
    method do { required }
    method iterator { required }
    method isEmpty {
        // override if size is known
        iterator.hasNext.not
    }
    method first {
        def it = self.iterator
        if (it.hasNext) then { 
            it.next
        } else {
            BoundsError.raise "no first element in {self}"
        }
    }
    method do(block1) separatedBy(block0) {
        var firstTime := true
        var i := 0
        self.do { each ->
            if (firstTime) then {
                firstTime := false
            } else {
                block0.apply
            }
            block1.apply(each)
        }
        return self
    }
    method reduce(initial, blk) {
    // deprecated; for compatibility with builtInList
        fold(blk)startingWith(initial)
    }
    method fold(blk)startingWith(initial) {
        var result := initial
        self.do {it ->
            result := blk.apply(result, it)
        }
        return result
    }
    method map⟦R⟧(block1:Function1⟦T, R⟧) -> Enumerable⟦R⟧ {
        lazySequenceOver(self) mappedBy(block1)
    }
    method filter(selectionCondition:Predicate1⟦T⟧) -> Enumerable⟦T⟧ {
        lazySequenceOver(self) filteredBy(selectionCondition)
    }
    method iter { self.iterator }
    method >>(target:Collection⟦T⟧) -> Collection⟦T⟧ { target ++ self }

}

trait enumerable⟦T⟧ {
    use collection⟦T⟧
    method iterator { required }
    method into(existing: Expandable⟦T⟧) -> Collection⟦T⟧ {
        def selfIterator = self.iterator
        while {selfIterator.hasNext} do {
            existing.add(selfIterator.next)
        }
        existing
    }
    method ==(other) {
        isEqual (self) toCollection (other)
    }
    method do(block1:Procedure1⟦T⟧) -> Done {
        def selfIterator = self.iterator
        while {selfIterator.hasNext} do {
            block1.apply(selfIterator.next)
        }
    }
    method keysAndValuesDo(block2:Procedure2⟦Number,T⟧) -> Done {
        var ix := 0
        def selfIterator = self.iterator
        while {selfIterator.hasNext} do {
            ix := ix + 1
            block2.apply(ix, selfIterator.next)
        }
    }
    method values -> Collection⟦T⟧ {
        self
    }
    method fold⟦R⟧(block2)startingWith(initial) -> R {
        var res := initial
        def selfIterator = self.iterator
        while { selfIterator.hasNext } do {
            res := block2.apply(res, selfIterator.next)
        }
        return res
    }
    method ++ (other:Collection⟦T⟧) -> Enumerable⟦T⟧ {
        lazyConcatenation(self, other)
    }
    method sortedBy(sortBlock:Function2) -> List⟦T⟧ {
        list.withAll(self).sortBy(sortBlock)
    }
    method sorted -> List⟦T⟧ {
        list.withAll(self).sort
    }
    method asString {
        var s := "⟨"
        self.do { each -> s := s ++ each.asString } separatedBy { s := s ++ ", " }
        s ++ "⟩"
    }
}

trait indexable⟦T⟧ {
    use collection⟦T⟧
    method at(index) { required }
    method size { required }
    method sizeIfUnknown(action) { size }
    method isEmpty { size == 0 }
    method keysAndValuesDo(action:Procedure2⟦Number,T⟧) -> Done {
        def curSize = size
        var i := 1
        while {i <= curSize} do {
            action.apply(i, self.at(i))
            i := i + 1
        }
    }
    method first { at(1) }
    method second { at(2) }
    method third { at(3) }
    method fourth { at(4) }
    method fifth { at(5) }
    method last { at(size) }
    method indices { range.from 1 to(size) }
    method indexOf(sought:T)  {
        indexOf(sought) ifAbsent { NoSuchObject.raise "collection does not contain {sought}" }
    }
    method indexOf(sought:T) ifAbsent(action:Function0⟦Unknown⟧)  {
        keysAndValuesDo { ix, v ->
            if (v == sought) then { return ix }
        }
        action.apply
    }
    method into(existing: Expandable⟦T⟧) -> Collection⟦T⟧ {
        def selfIterator = self.iterator
        while {selfIterator.hasNext} do {
            existing.add(selfIterator.next)
        }
        existing
    }
}

method max(a,b) is confidential {       // copied from standard intrinsic
    if (a > b) then { a } else { b }
}

def emptySequence is confidential = object {
    use indexable
    method size { 0 }
    method sizeIfUnknown(action) { 0 }
    method isEmpty { true }
    method at(n) { BoundsError.raise "index {n} of empty sequence" }
    method keys { self }
    method values { self }
    method keysAndValuesDo(block2) { intrinsic.done }
    method reversed { self }
    method ++ (other: Collection) { sequence.withAll(other) }
    method asString { "⟨⟩" }
    method contains(element) { false }
    method do(block1) { intrinsic.done }
    method ==(other) {
        if (Collection.matches(other)) then { 
            other.isEmpty
        } else {
            false
        }
    }
    class iterator {
        method asString { "emptySequenceIterator" }
        method hasNext { false }
        method next { IteratorExhausted.raise "on empty sequence" }
    }
    method sorted { self }
    method sortedBy(sortBlock:Function2){ self }
}

class sequence⟦T⟧ {

    method asString { "a sequence factory" }

    method empty {
        // this is an optimization: there need be just one empty sequence
        emptySequence
    }

    method ++ (arg: Collection⟦T⟧) {
        withAll(arg)
    }
    method withAll(arg: Collection⟦T⟧) {
        var sizeCertain := true
        // size might be uncertain if arg is a lazy collection.
        def forecastSize = arg.sizeIfUnknown {
            sizeCertain := false
            8
        }
        var inner := intrinsic.primitiveArray.new(forecastSize)
        var innerSize := inner.size
        var ix := 0
        if (sizeCertain) then {
            // common, fast path
            arg.do { elt ->
                inner.at(ix)put(elt)
                ix := ix + 1
            }
        } else {
            // less-than-optimal path
            arg.do { elt ->
                if (innerSize <= ix) then {
                    def newInner = intrinsic.primitiveArray.new(innerSize * 2)
                    (0..(innerSize-1)).do { i ->
                        newInner.at(i)put(inner.at(i))
                    }
                    inner := newInner
                    innerSize := inner.size
                }
                inner.at(ix)put(elt)
                ix := ix + 1
            }
        }
        if (ix == 0) then { return emptySequence }
        self.fromprimitiveArray(inner, ix)
    }
    method fromprimitiveArray(pArray, sz) is confidential {
        // constructs a sequence from the first sz elements of pArray

        object {
            use indexable
            def size is public = sz
            def inner = pArray

            method boundsCheck(n) is confidential {
                if (!(n >= 1) || !(n <= size)) then {
                    // the condition is written this way because NaN always
                    // compares false
                    BoundsError.raise "index {n} out of bounds 1..{size}"
                }
            }
            method at(n) {
                boundsCheck(n)
                inner.at(n-1)
            }
            method keys {
                range.from(1)to(size)
            }
            method values {
                self
            }
            method keysAndValuesDo(block2) {
                var i := 0
                while {i < size} do {
                    block2.apply(i+1, inner.at(i))
                    i := i + 1
                }
            }
            method reversed {
                def freshArray = intrinsic.primitiveArray.new(size)
                var ix := size - 1
                do { each ->
                    freshArray.at (ix) put(each)
                    ix := ix - 1
                }
                outer.fromprimitiveArray(freshArray, size)
            }
            method ++ (other:Collection⟦T⟧) {
                sequence.withAll(lazyConcatenation(self, other))
            }
            method asString {
                var s := "⟨"
                (0..(size-1)).do { i ->
                    s := s ++ inner.at(i).asString
                    if (i < (size-1)) then { s := s ++ ", " }
                }
                s ++ "⟩"
            }
            method contains(element) {
                do { each -> if (each == element) then { return true } }
                return false
            }
            method do(block1) {
                var i := 0
                while {i < size} do {
                    block1.apply(inner.at(i))
                    i := i + 1
                }
            }
            method ==(other) {
                isEqual (self) toCollection (other)
            }
            method iterator {
                object {
                    var idx := 1
                    method asDebugString { "{asString}⟪{idx}⟫" }
                    method asString { "aSequenceIterator" }
                    method hasNext { idx <= sz }
                    method next {
                        if (idx > sz) then { IteratorExhausted.raise "on sequence {outer}⟪{idx}⟫" }
                        def ret = at(idx)
                        idx := idx + 1
                        ret
                    }
                }
            }
            method sorted {
                sequence.withAll(list.withAll(self).sortBy { l, r ->
                    if (l == r) then {0} else {
                        if {l < r} then {-1} else {1}
                    }
                })
            }
            method sortedBy(sortBlock:Function2){
                sequence.withAll(list.withAll(self).sortBy(sortBlock))
            }
        }
    }
}

type MinimalyIterable = type {
    iterator -> Iterator
}

method isEqual(left) toCollection(right) {
    if (MinimalyIterable.match(right)) then {
        def leftIter = left.iterator
        def rightIter = right.iterator
        while {leftIter.hasNext && rightIter.hasNext} do {
            if (leftIter.next != rightIter.next) then {
                return false
            }
        }
        leftIter.hasNext == rightIter.hasNext
    } else { 
        false
    }
}

class list⟦T⟧ {
    
    method asString { "the list class" }
    
    method empty -> List⟦T⟧ {
        withAll(emptySequence)
    }

    method withAll(a: Collection⟦T⟧) -> List⟦T⟧ {
        object {
            use indexable⟦T⟧

            var mods is readable := 0
            var sizeCertain := true
            // size might be uncertain if a is a lazy collection.
            def initialSize = a.sizeIfUnknown{
                sizeCertain := false
                4 } * 2 + 1
            var inner := intrinsic.primitiveArray.new(initialSize)
            var size is readable := 0
            if (sizeCertain) then {
                // common, fast path
                a.do { x ->
                    inner.at(size)put(x)
                    size := size + 1
                }
            } else {
                // less-than-optimal path
                var innerSize := initialSize
                a.do { x ->
                    if (innerSize <= size) then {
                        def newInner = intrinsic.primitiveArray.new(innerSize * 2)
                        (0..(innerSize-1)).do { i ->
                            newInner.at (i) put (inner.at(i) )
                        }
                        inner := newInner
                        innerSize := inner.size
                    }
                    inner.at(size)put(x)
                    size := size + 1
                }
            }
            method boundsCheck(n) is confidential {
                if ( !(n >= 1) || !(n <= size)) then {
                    BoundsError.raise "index {n} out of bounds 1..{size}"
                }
            }
            method at(n) {
                boundsCheck(n)
                inner.at(n-1)
            }
            method at(n)put(x) {
                mods := mods + 1
                if (n == (size+1)) then {
                    addLast(x)
                } else {
                    boundsCheck(n)
                    inner.at(n-1)put(x)
                }
                self
            }
            method add(x) {
                mods := mods + 1
                if (size == inner.size) then { expandTo(inner.size * 2) }
                inner.at(size)put(x)
                size := size + 1
                self
            }
            method addAll(l) {
                mods := mods + 1
                if ((size + l.size) > inner.size) then {
                    expandTo(max(size + l.size, size * 2))
                }
                l.do {each ->
                    inner.at(size)put(each)
                    size := size + 1
                }
                self
            }
            method push(x) {
                mods := mods + 1
                if (size == inner.size) then { expandTo(inner.size * 2) }
                inner.at(size)put(x)
                size := size + 1
                self
            }
            method addLast(x) { push(x) }    // compatibility
            method removeLast {
                mods := mods + 1
                def result = inner.at(size - 1)
                size := size - 1
                result
            }
            method addAllFirst(l) {
                mods := mods + 1
                def increase = l.size
                if ((size + increase) > inner.size) then {
                    expandTo(max(size + increase, size * 2))
                }
                range.from(size-1)downTo(0).do { i ->
                    inner.at(i+increase)put(inner.at(i))
                }
                var insertionIndex := 0
                l.do { each ->
                    inner.at(insertionIndex)put(each)
                    insertionIndex := insertionIndex + 1
                }
                size := size + increase
                self
            }
            method addFirst(elt:T) {
                mods := mods + 1
                if ((size + 1) > inner.size) then {
                    expandTo(size * 2)
                }
                range.from (size-1) downTo 0.do {i->
                    inner.at (i+1) put (inner.at(i) )
                }
                inner.at(0)put(elt)
                size := size + 1
                self
            }
            method clear {
                mods := mods + 1
                inner := intrinsic.primitiveArray.new(initialSize)
                size := 0
                self
            }
            method removeFirst {
                removeAt(1)
            }
            method removeAt(n) {
                mods := mods + 1
                boundsCheck(n)
                def removed = inner.at(n-1)
                (n..(size-1)).do {i->
                    inner.at(i-1)put(inner.at(i))
                }
                size := size - 1
                return removed
            }

            method remove(elt:T) {
                def ix = self.indexOf(elt) ifAbsent {
                    NoSuchObject.raise "list does not contain {elt}"
                }
                removeAt(ix)
                self
            }

            method remove(elt:T) ifAbsent(action:Procedure0) {
                def ix = self.indexOf(elt) ifAbsent {
                    action.apply
                    return self
                }
                removeAt(ix)
                self
            }

            method removeAll(vs: Collection⟦T⟧) {
                removeAll(vs) ifAbsent { NoSuchObject.raise "list does not contain object" }
                self
            }
            method removeAll(vs: Collection⟦T⟧) ifAbsent(action:Procedure0)  {
                vs.do { each ->
                    def ix = indexOf(each) ifAbsent { 0 }
                    if (ix ≠ 0) then {
                        removeAt(ix)
                    } else {
                        action.apply
                    }
                }
                self
            }
            method pop { removeLast }
            method reversed {
                def result = list.empty
                do { each -> result.addFirst(each) }
                result
            }
            method reverse {
                mods := mods + 1
                var hiIx := size
                var loIx := 1
                while {loIx < hiIx} do {
                    def hiVal = self.at(hiIx)
                    self.at(hiIx) put (self.at(loIx))
                    self.at(loIx) put (hiVal)
                    hiIx := hiIx - 1
                    loIx := loIx + 1
                }
                self
            }
            method ++ (o:Collection⟦T⟧) {
                def l = list.withAll(self)
                l.addAll(o)
            }
            method asString {
                var s := "["
                (0..(size-1)).do {i->
                    s := s ++ inner.at(i).asString
                    if (i < (size-1)) then { s := s ++ ", " }
                }
                s ++ "]"
            }
            method asDebugString {
                var s := "["
                (0..(size-1)).do {i->
                    s := s ++ inner.at(i).asDebugString
                    if (i < (size-1)) then { s := s ++ ", " }
                }
                s ++ "]"
            }
            method contains(element) {
                do { each -> if (each == element) then { return true } }
                return false
            }
            method do(block1) {
                def iMods = mods
                var i := 0
                while {i < size} do {
                    if (iMods ≠ mods) then {
                        ConcurrentModification.raise (asDebugString)
                    }
                    block1.apply(inner.at(i))
                    i := i + 1
                }
            }

            method ==(other) {
                isEqual (self) toCollection (other)
            }
            method iterator {
                object {
                    def iMods = mods
                    var idx := 1
                    method asDebugString { "{asString}⟪{idx}⟫" }
                    method asString { "aListIterator" }
                    method hasNext { idx <= size }
                    method next {
                        if (iMods != mods) then {
                            ConcurrentModification.raise (asDebugString)
                        }
                        if (idx > size) then { IteratorExhausted.raise "on list" }
                        def ret = at(idx)
                        idx := idx + 1
                        ret
                    }
                }
            }
            method values {
                self
            }
            method keys {
                self.indices
            }
            method expandTo(newSize) is confidential {
                def newInner = intrinsic.primitiveArray.new(newSize)
                (0..(size-1)).do {i->
                    newInner.at(i)put(inner.at(i))
                }
                inner := newInner
            }
            method sortBy(sortBlock:Function2) {
                mods := mods + 1
                inner.sortInitial(size) by(sortBlock)
                self
            }
            method sort {
                sortBy { l, r ->
                    if (l == r) then {0} else {
                        if {l < r} then {-1} else {1}
                    }
                }
            }
            method sortedBy(sortBlock:Function2) {
                copy.sortBy(sortBlock)
            }
            method sorted {
                copy.sort
            }
            method copy {
                outer.withAll(self)
            }
        }
    }
}


def unused = object {
    var unused := true
    def key is public = self
    def value is public = self
    method asString { "unused" }
    method == (other) { self.isMe(other) }
}

def removed = object {
    var removed := true
    def key is public = self
    def value is public = self
    method asString { "removed" }
    method == (other) { self.isMe(other) }
}

class set⟦T⟧ {

    method asString { "a set class" }

    method withAll(a: Collection⟦T⟧) -> Set⟦T⟧ {
        def cap = max (a.sizeIfUnknown{2} * 3 + 1, 8)
        def result = ofCapacity (cap)
        a.do { x -> result.add(x) }
        result
    }
    
    method empty -> Set⟦T⟧ {
        ofCapacity 8
    }

    class ofCapacity(cap) -> Set⟦T⟧ is confidential {
        use collection⟦T⟧
        var mods is readable := 0
        var inner := intrinsic.primitiveArray.new(cap)
        var size is readable := 0
        (0..(cap - 1)).do { i ->
            inner.at (i) put (unused)
        }

        method isEmpty { size == 0 }

        method addAll(elements) {
            mods := mods + 1
            elements.do { x ->
                if (! contains(x)) then {
                    def t = findPositionForAdd(x)
                    inner.at(t)put(x)
                    size := size + 1
                    if (size > (inner.size / 2)) then {
                        expand
                    }
                }
            }
            self    // for chaining
        }

        method add(x:T) {
            if (! contains(x)) then {
                mods := mods + 1
                def t = findPositionForAdd(x)
                inner.at(t)put(x)
                size := size + 1
                if (size > (inner.size / 2)) then {
                    expand
                }
            }
            self    // for chaining
        }

        method removeAll(elements) {
            elements.do { x ->
                remove (x) ifAbsent {
                    NoSuchObject.raise "set does not contain {x}"
                }
            }
            self    // for chaining
        }
        method removeAll(elements)ifAbsent(block:Procedure1⟦T⟧) {
            mods := mods + 1
            elements.do { x ->
                var t := findPosition(x)
                if (inner.at(t) == x) then {
                    inner.at(t) put (removed)
                    size := size - 1
                } else {
                    block.apply(x)
                }
            }
            self    // for chaining
        }
        method clear {
            mods := mods + 1
            inner := intrinsic.primitiveArray.new(cap)
            size := 0
            self
        }

        method remove (elt:T) ifAbsent (block) {
            var t := findPosition(elt)
            if (inner.at(t) == elt) then {
                inner.at(t) put (removed)
                mods := mods + 1
                size := size - 1
            } else {
                block.apply
            }
            self    // for chaining
        }

        method remove(elt:T) {
            remove (elt) ifAbsent {
                NoSuchObject.raise "set does not contain {elt}"
            }
            self    // for chaining
        }

        method contains(x) {
            var t := findPosition(x)
            if (inner.at(t) == x) then {
                return true
            }
            return false
        }
        method includes(booleanBlock) {
            self.do { each ->
                if (booleanBlock.apply(each)) then { return true }
            }
            return false
        }
        method find(booleanBlock)ifNone(notFoundBlock) {
            self.do { each ->
                if (booleanBlock.apply(each)) then { return each }
            }
            return notFoundBlock.apply
        }
        method findPosition(x) is confidential {
            def h = x.hash
            def s = inner.size
            var t := h % s
            var jump := 5
            var candidate
            while {
                candidate := inner.at(t)
                unused ≠ candidate
            } do {
                if (candidate == x) then {
                    return t
                }
                if (jump != 0) then {
                    t := (t * 3 + 1) % s
                    jump := jump - 1
                } else {
                    t := (t + 1) % s
                }
            }
            return t
        }
        method findPositionForAdd(x) is confidential {
            def h = x.hash
            def s = inner.size
            var t := h % s
            var jump := 5
            var candidate
            while {
                candidate := inner.at(t)
                (unused != candidate) && (removed != candidate)
            } do {
                if (candidate == x) then {
                    return t
                }
                if (jump != 0) then {
                    t := (t * 3 + 1) % s
                    jump := jump - 1
                } else {
                    t := (t + 1) % s
                }
            }
            return t
        }

        method asString {
            var s := "set\{"
            do {each -> s := s ++ each.asString }
                separatedBy { s := s ++ ", " }
            s ++ "\}"
        }
        method asDebugString {
            var s := "set\{"
            do {each -> s := s ++ each.asDebugString }
                separatedBy { s := s ++ ", " }
            s ++ "\}"
        }
        method extend(l) {
            l.do {i->
                add(i)
            }
        }
        method do(block1) {
            def iMods = mods
            var i := 0
            var found := 0
            var candidate
            while {found < size} do {
                if (iMods != mods) then {
                    ConcurrentModification.raise (outer.asDebugString)
                }
                candidate := inner.at(i)
                if ((unused != candidate) && (removed != candidate)) then {
                    found := found + 1
                    block1.apply(candidate)
                }
                i := i + 1
            }
        }
        method iterator {
            object {
                def iMods = mods
                var count := 1
                var idx := -1
                method hasNext { size >= count }
                method next {
                    var candidate
                    def innerSize = inner.size
                    while {
                        idx := idx + 1
                        if (iMods != mods) then {
                            ConcurrentModification.raise (outer.asDebugString)
                        }
                        if (idx >= innerSize) then {
                            IteratorExhausted.raise "iterator over {outer.asString}"
                        }
                        candidate := inner.at(idx)
                        (unused == candidate) || (removed == candidate)
                    } do { }
                    count := count + 1
                    candidate
                }
            }
        }

        method expand is confidential {
            def c = inner.size
            def n = c * 2
            def oldInner = inner
            size := 0
            inner := intrinsic.primitiveArray.new(n)
            (0..(inner.size-1)).do {i->
                inner.at(i)put(unused)
            }
            (0..(oldInner.size-1)).do {i->
                if ((unused != oldInner.at(i)) && (removed != oldInner.at(i))) then {
                    add(oldInner.at(i))
                }
            }
        }
        method ==(other) {
            if (Collection.match(other)) then {
                var otherSize := 0
                other.do { each ->
                    otherSize := otherSize + 1
                    if (! self.contains(each)) then {
                        return false
                    }
                }
                otherSize == self.size
            } else { 
                false
            }
        }
        method copy {
            outer.withAll(self)
        }
        method ++ (other:Collection⟦T⟧) {
        // set union
            copy.addAll(other)
        }
        method -- (other:Collection⟦T⟧) {
        // set difference
            def result = set.empty
            self.do { v ->
                if (!other.contains(v)) then {
                    result.add(v)
                }
            }
            result
        }
        method ** (other) {
        // set intersection
            set.withAll((filter {each -> other.contains(each)}))
        }
        method isSubset(s2: Set⟦T⟧) {
            self.do{ each ->
                if (s2.contains(each).not) then { return false }
            }
            return true
        }

        method isSuperset(s2: Collection⟦T⟧) {
            s2.do{ each ->
                if (self.contains(each).not) then { return false }
            }
            return true
        }
        method into(existing: Expandable⟦T⟧) -> Collection⟦T⟧ {
            do { each -> existing.add(each) }
            existing
        }
    }
}

def binding is public = object {
    method asString { "the binding class" }

    class key(k)value(v) {
        method key {k}
        method value {v}
        method asString { "{k}::{v}" }
        method hashcode { (k.hashcode * 1021) + v.hashcode }
        method hash { (k.hash * 1021) + v.hash }
        method == (other) {
            if (Binding.matches(other)) then {
                (k == other.key) && (v == other.value)
            } else { 
                false
            }
        }
    }
}

type ComparableToDictionary⟦K,T⟧ = type {
    size -> Number
    at(_:K)ifAbsent(_) -> T
}

class dictionary⟦K,T⟧ {

    method asString { "a dictionary class" }

    method withAll(initialBindings: Collection⟦Binding⟦K,T⟧⟧) -> Dictionary⟦K,T⟧ {
        def result = empty
        initialBindings.do { b -> result.add(b) }
        result
    }

    class empty -> Dictionary⟦K,T⟧ {
        use collection⟦T⟧
        var mods is readable := 0
        var numBindings := 0
        var inner := intrinsic.primitiveArray.new(8)
        (0..(inner.size-1)).do { i ->
            inner.at(i)put(unused)
        }
        method size { numBindings }
        method at(key')put(value') {
            mods := mods + 1
            var t := findPositionForAdd(key')
            if ((unused == inner.at(t)) || (removed == inner.at(t))) then {
                numBindings := numBindings + 1
            }
            inner.at(t)put(binding.key(key')value(value'))
            if ((size * 2) > inner.size) then { expand }
            self    // for chaining
        }
        method add(aBinding) {
            mods := mods + 1
            var t := findPositionForAdd (aBinding.key)
            if ((unused == inner.at(t)) || (removed == inner.at(t))) then {
                numBindings := numBindings + 1
            }
            inner.at(t)put(aBinding)
            if ((size * 2) > inner.size) then { expand }
            self    // for chaining
        }
        method at(k) {
            var b := inner.at(findPosition(k))
            if (b.key == k) then {
                return b.value
            }
            NoSuchObject.raise "dictionary does not contain entry with key {k}"
        }
        method at(k) ifAbsent(action) {
            var b := inner.at(findPosition(k))
            if (b.key == k) then {
                return b.value
            }
            action.apply
        }
        method containsKey(k) {
            var t := findPosition(k)
            if (inner.at(t).key == k) then {
                return true
            }
            false
        }
        method removeAllKeys(keys) {
            mods := mods + 1
            keys.do { k ->
                var t := findPosition(k)
                if (inner.at(t).key == k) then {
                    inner.at(t)put(removed)
                    numBindings := numBindings - 1
                } else {
                    NoSuchObject.raise "dictionary does not contain entry with key {k}"
                }
            }
            self
        }
        method removeKey(k:K) {
            mods := mods + 1
            var t := findPosition(k)
            if (inner.at(t).key == k) then {
                inner.at(t)put(removed)
                numBindings := numBindings - 1
            } else {
                NoSuchObject.raise "dictionary does not contain entry with key {k}"
            }
            self
        }
        method removeKey(k:K) ifAbsent (action:Function0⟦Unknown⟧) {
            mods := mods + 1
            var t := findPosition(k)
            if (inner.at(t).key == k) then {
                inner.at(t)put(removed)
                numBindings := numBindings - 1
            } else {
                action.apply
            }
            self
        }
        method removeAllValues(removals) {
            mods := mods + 1
            (0..(inner.size-1)).do {i->
                def a = inner.at(i)
                if (removals.contains(a.value)) then {
                    inner.at(i)put(removed)
                    numBindings := numBindings - 1
                }
            }
            self
        }
        method removeValue(v) {
            // remove all bindings with value v
            mods := mods + 1
            def initialNumBindings = numBindings
            (0..(inner.size-1)).do {i->
                def a = inner.at(i)
                if (v == a.value) then {
                    inner.at (i) put (removed)
                    numBindings := numBindings - 1
                }
            }
            if (numBindings == initialNumBindings) then {
                NoSuchObject.raise "dictionary does not contain entry with value {v}"
            }
            self
        }
        method removeValue(v) ifAbsent (action:Function0⟦Unknown⟧) {
            // remove all bindings with value v
            mods := mods + 1
            def initialNumBindings = numBindings
            (0..(inner.size-1)).do {i->
                def a = inner.at(i)
                if (v == a.value) then {
                    inner.at (i) put (removed)
                    numBindings := numBindings - 1
                }
            }
            if (numBindings == initialNumBindings) then {
                action.apply
            }
            self
        }
        method clear {
            inner := intrinsic.primitiveArray.new(8)
            numBindings := 0
            mods := mods + 1
            (0..(inner.size-1)).do { i ->
                inner.at(i)put(unused)
            }
            self
        }
        method containsValue(v) {
            self.valuesDo{ each ->
                if (v == each) then { return true }
            }
            false
        }
        method contains(v) { containsValue(v) }

        method findPosition(x) is confidential {
            def h = x.hash
            def s = inner.size
            var t := h % s
            var jump := 5
            while { unused ≠ inner.at(t) } do {
                if (inner.at(t).key == x) then {
                    return t
                }
                if (jump != 0) then {
                    t := (t * 3 + 1) % s
                    jump := jump - 1
                } else {
                    t := (t + 1) % s
                }
            }
            return t
        }
        method findPositionForAdd(x) is confidential {
            def h = x.hash
            def s = inner.size
            var t := h % s
            var jump := 5
            while { (unused ≠ inner.at(t)) && (removed ≠ inner.at(t)) } do {
                if (inner.at(t).key == x) then {
                    return t
                }
                if (jump != 0) then {
                    t := (t * 3 + 1) % s
                    jump := jump - 1
                } else {
                    t := (t + 1) % s
                }
            }
            return t
        }
        method asString {
            // do()separatedBy won't work, because it iterates over values,
            // and we need an iterator over bindings.
            var s := "dict⟬"
            var firstElement := true
            (0..(inner.size-1)).do {i->
                def a = inner.at(i)
                if ((unused ≠ a) && (removed ≠ a)) then {
                    if (! firstElement) then {
                        s := s ++ ", "
                    } else {
                        firstElement := false
                    }
                    s := s ++ "{a.key}::{a.value}"
                }
            }
            s ++ "⟭"
        }
        method asDebugString {
            var s := "dict⟬"
            (0..(inner.size-1)).do {i->
                if (i > 0) then { s := s ++ ", " }
                def a = inner.at(i)
                if ((unused ≠ a) && (removed ≠ a)) then {
                    s := s ++ "{i}→{a.key}::{a.value}"
                } else {
                    s := s ++ "{i}→{a.asDebugString}"
                }
            }
            s ++ "⟭"
        }
        method keys -> Enumerable⟦K⟧ {
            def sourceDictionary = self
            object {
                use enumerable⟦K⟧
                class iterator {
                    def sourceIterator = sourceDictionary.bindingsIterator
                    method hasNext { sourceIterator.hasNext }
                    method next { sourceIterator.next.key }
                    method asString {
                        "an iterator over keys of {sourceDictionary}"
                    }
                }
                def size is public = sourceDictionary.size
                method asDebugString {
                    "a lazy sequence over keys of {sourceDictionary}"
                }
            }
        }
        method values -> Enumerable⟦T⟧ {
            def sourceDictionary = self
            object {
                use enumerable⟦T⟧
                class iterator {
                    def sourceIterator = sourceDictionary.bindingsIterator
                    // should be request on outer
                    method hasNext { sourceIterator.hasNext }
                    method next { sourceIterator.next.value }
                    method asString {
                        "an iterator over values of {sourceDictionary}"
                    }
                }
                def size is public = sourceDictionary.size
                method asDebugString {
                    "a lazy sequence over values of {sourceDictionary}"
                }
            }
        }
        method bindings -> Enumerable⟦T⟧ {
            def sourceDictionary = self
            object {
                use enumerable⟦T⟧
                method iterator { sourceDictionary.bindingsIterator }
                // should be request on outer
                def size is public = sourceDictionary.size
                method asDebugString {
                    "a lazy sequence over bindings of {sourceDictionary}"
                }
            }
        }
        method iterator -> Iterator⟦T⟧ { values.iterator }
        class bindingsIterator -> Iterator⟦Binding⟦K, T⟧⟧ {
            // this should be confidential, but can't be until `outer` is fixed.
            def iMods = mods
            var count := 1
            var idx := 0
            var elt
            method hasNext { size >= count }
            method next {
                if (iMods != mods) then {
                    ConcurrentModification.raise (outer.asString)
                }
                if (size < count) then { IteratorExhausted.raise "over {outer.asString}" }
                while {
                    elt := inner.at(idx)
                    (unused == elt) || (removed == elt)
                } do {
                    idx := idx + 1
                }
                count := count + 1
                idx := idx + 1
                elt
            }
        }
        method expand is confidential {
            def c = inner.size
            def n = c * 2
            def oldInner = inner
            inner := intrinsic.primitiveArray.new(n)
            (0..(n - 1)).do {i->
                inner.at(i)put(unused)
            }
            numBindings := 0
            (0..(c - 1)).do {i->
                def a = oldInner.at(i)
                if ((unused ≠ a) && (removed ≠ a)) then {
                    self.at(a.key)put(a.value)
                }
            }
        }
        method keysAndValuesDo(block2) {
            (0..(inner.size-1)).do {i->
                def a = inner.at(i)
                if ((unused ≠ a) && (removed ≠ a)) then {
                    block2.apply(a.key, a.value)
                }
            }
        }
        method keysDo(block1) {
            def iMods = mods
            (0..(inner.size-1)).do { i ->
                if (iMods ≠ mods) then {
                    ConcurrentModification.raise (asDebugString)
                }
                def a = inner.at(i)
                if ((unused ≠ a) && (removed ≠ a)) then {
                    block1.apply(a.key)
                }
            }
        }
        method valuesDo(block1) {
            def iMods = mods
            (0..(inner.size-1)).do { i ->
                if (iMods ≠ mods) then {
                    ConcurrentModification.raise (asDebugString)
                }
                def a = inner.at(i)
                if ((unused ≠ a) && (removed ≠ a)) then {
                    block1.apply(a.value)
                }
            }
        }
        method do(block1) { valuesDo(block1) }

        method ==(other) {
            if (ComparableToDictionary⟦K,T⟧.matches(other)) then {
                if (self.size != other.size) then {return false}
                self.keysAndValuesDo { k, v ->
                    if (other.at(k)ifAbsent{return false} != v) then {
                        return false
                    }
                }
                return true
            } else {
                return false
            }
        }

        method copy {
            def newCopy = dictionary.empty
            self.keysAndValuesDo{ k, v ->
                newCopy.at(k)put(v)
            }
            newCopy
        }

        method ++ (other:Collection⟦T⟧) {
            def newDict = self.copy
            other.keysAndValuesDo {k, v ->
                newDict.at(k) put(v)
            }
            return newDict
        }

        method -- (other:Collection⟦T⟧) {
            def newDict = dictionary.empty
            keysAndValuesDo { k, v ->
                if (! other.containsKey(k)) then {
                    newDict.at(k) put(v)
                }
            }
            return newDict
        }
    }
}

class range {
    method from(lower)to(upper) -> Sequence⟦Number⟧ {
        if (Number.matches(lower).not) then {
            RequestError.raise ("lower bound {lower}" ++
                " in range.from({lower})to({upper}) is not an integer")
        }
        def start = lower.truncated
        if (start != lower) then {
            RequestError.raise ("lower bound {lower}" ++
                " in range.from({lower})to({upper}) is not an integer") }

        if (Number.matches(upper).not) then {
            RequestError.raise ("upper bound {upper}" ++
                " in range.from({lower})to({upper}) is not an integer")
        }
        def stop = upper.truncated
        if (stop != upper) then {
            RequestError.raise ("upper bound {upper}" ++
                " in range.from()to() is not an integer")
        }

        uncheckedFrom (lower) to (upper)
    }

    method uncheckedFrom (lower) to (upper) -> Sequence⟦Number⟧ {
        object {
            use indexable⟦Number⟧
            def start = lower
            def stop = upper
            def size is public =
                if ((upper-lower+1) < 0) then { 0 } else {upper-lower+1}

            def hash is public = { ((start.hash * 1021) + stop.hash) * 3 }

            method iterator -> Iterator {
                object {
                    var val := start
                    method hasNext { val <= stop }
                    method next {
                        if (val > stop) then {
                            IteratorExhausted.raise "over {outer.asString}"
                        }
                        val := val + 1
                        return (val - 1)
                    }
                    method asString { "iterator over {outer.asString} at {val}" }
                }
            }
            method at(ix:Number) {
                if (!(ix <= self.size)) then {
                    BoundsError.raise "requested range.at({ix}), but upper bound is {size}"
                }
                if (!(ix >= 1)) then {
                    BoundsError.raise "requested range.at({ix}), but lower bound is 1"
                }
                return start + (ix - 1)
            }
            method contains(elem) -> Boolean {
                intrinsic.try {
                    def intElem = elem.truncated
                    if (intElem != elem) then {return false}
                    if (intElem < start) then {return false}
                    if (intElem > stop) then {return false}
                } catch { ex:intrinsic.Exception -> return false }
                return true
            }
            method do(block1) {
                var val := start
                while {val <= stop} do {
                    block1.apply(val)
                    val := val + 1
                }
            }
            method keysAndValuesDo(block2) {
                var key := 1
                var val := start
                while {val <= stop} do {
                    block2.apply(key, val)
                    key := key + 1
                    val := val + 1
                }
            }
            method reversed {
                from(upper)downTo(lower)
            }
            method ++ (other:Collection⟦Number⟧) {
                sequence.withAll(lazyConcatenation(self, other))
            }
            method ==(other) {
                isEqual (self) toCollection (other)
            }
            method sorted { self }

            method sortedBy(c) { list.withAll(self).sortBy(c) }

            method keys { 1..self.size }

            method values { self }

            method asString -> String{
                "range.from({lower})to({upper})"
            }
        }
    }
    method from(upper)downTo(lower) -> Sequence⟦Number⟧ {
        object {
            use indexable⟦Number⟧
            if (Number.matches(lower).not) then {
                RequestError.raise ("lower bound {lower}" ++
                    " in range.from({lower})to({upper}) is not an integer")
            }
            def start = lower.truncated
            if (start != lower) then {
                RequestError.raise ("lower bound {lower}" ++
                    " in range.from({lower})to({upper}) is not an integer") }

            if (Number.matches(upper).not) then {
                RequestError.raise ("upper bound {upper}" ++
                    " in range.from({lower})to({upper}) is not an integer")
            }
            def stop = upper.truncated
            if (stop != upper) then {
                RequestError.raise ("upper bound {upper}" ++
                    " in range.from()to() is not an integer")
            }
            def size is public =
                if ((upper-lower+1) < 0) then { 0 } else {upper-lower+1}
            method iterator {
                object {
                    var val := start
                    method hasNext { val >= stop }
                    method next {
                        if (val < stop) then { IteratorExhausted.raise "over {outer.asString}" }
                        val := val - 1
                        return (val + 1)
                    }
                    method asString { "an iterator over {outer.asString} at {val}" }
                }
            }
            method at(ix:Number) {
                if (!(ix <= self.size)) then {
                    BoundsError.raise "requested range.at({ix}) but upper bound is {size}"
                }
                if (!(ix >= 1)) then {
                    BoundsError.raise "requested range.at({ix}) but lower bound is 1"
                }
                return start - (ix - 1)
            }
            method contains(elem) -> Boolean {
                intrinsic.try {
                    def intElem = elem.truncated
                    if (intElem != elem) then {return false}
                    if (intElem > start) then {return false}
                    if (intElem < stop) then {return false}
                } catch { ex:intrinsic.Exception -> return false }
                return true
            }
            method do(block1) {
                var val := start
                while {val >= stop} do {
                    block1.apply(val)
                    val := val - 1
                }
            }
            method keysAndValuesDo(block2) {
                var key := 1
                var val := start
                while {val >= stop} do {
                    block2.apply(key, val)
                    key := key + 1
                    val := val - 1
                }
            }
            method reversed {
                from(lower)to(upper)
            }
            method ++ (other:Collection⟦Number⟧) {
                sequence.withAll(lazyConcatenation(self, other))
            }
            method ==(other) {
                isEqual (self) toCollection (other)
            }
            method sorted { self.reversed }

            method sortedBy(c) { list.withAll(self).sortBy(c) }

            method keys { 1..self.size }

            method values { self }

            method asString -> String {
                "range.from {upper} downTo {lower}"
            }
        }
    }
}
