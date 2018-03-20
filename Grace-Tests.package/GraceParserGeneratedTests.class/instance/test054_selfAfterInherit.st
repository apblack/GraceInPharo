minigrace good
test054_selfAfterInherit
	self good: #Module parse: '// This is a test of a module with a name that''s not an id.
// It also tests that `self` is correctly bound at the
// top level, and in a top-level method, to the module
// object.  It also checks that outer from a nested
// object also refers to the module object.


method three { "three " }
method this { self }
method asString { "the t054 module object" }
def two = object  {
    method asString { "two " }
    method thisModule { this }  // compiles to outer.this
}
class count {
    method asString { "one " ++ two ++ three }
}
print(self)
print(two.thisModule)
print(count)
'
