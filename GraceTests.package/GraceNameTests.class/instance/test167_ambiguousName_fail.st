minigrace failing
test167_ambiguousName_fail
	self bad: #Module parse: 'import "gUnit" as gu

method assert(cond) {
    print "top-level assert {cond}"
}

method b { "this is b" }

def o = object {
    inherit gu.assertion
    method countOneAssertion { print "o''s assert" }
    method d { "this is d" }

    assert( 1 == 1 )    // this is ambiguous
}

print(b)
assert(true)
print(o.d)
print "done"
'
