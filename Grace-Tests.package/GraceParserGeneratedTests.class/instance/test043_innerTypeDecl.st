minigrace good
test043_innerTypeDecl
	self good: #Module parse: 'class testClass {
    def s is public = Singleton.named "hi there"
    type t = interface { a(_) -> Done }
    print "during initialization, s = \"{s}\" and t = {t}"
}

def to = testClass
print (to.s)
print (to.t)
'
