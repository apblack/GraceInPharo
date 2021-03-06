minigrace good
test15a_typeCompile
	self good: #Module parse: 'def a = 7
type A = { a -> String
    b -> Number }

def obj1 = object {
    method foo {
        print(a)
        print(A)
    }
}

obj1.foo

def obj2 = object {
    method a { "Hello" }
    method b { 42 }
}

match (obj2)
    case { _ : A -> print "OK; obj2 is of type A" }
    case { _ -> print "fail: type did not match" }

type B = interface { a -> String } & interface { b -> Number }

match (obj2)
    case { _ : B -> print "OK; obj2 is also of type B" }
    case { _ -> print "fail: type did not match" }

type C = B & interface { c -> Exception }

match (obj2)
    case { _ : C -> print "fail: obj2 is also of type C" }
    case { _ : B -> print "OK; obj2 is of type B" }
    case { _  -> print "fail: type did not match"}

'
