tests
testNonTransitivityOfDialect
	"While a dialect can see the definitions of its surrounding scope, programs using that
	dialect cannot"
	
	| dummyDialect exampleProgram dialectFile |
	dummyDialect := 'dialect "standardGrace"

method print(str) { outer.print (str) }

class mySingleton { 
    inherit outer.singleton }
'.

	exampleProgram := 'dialect "dummy"
print "Hello"
mySingleton     // ok, declared in dummy dialect
singleton       // not ok; not visible from here
'.
	dialectFile := GraceParserCompilationResource current minigraceSource / 'dummy.grace'.
	dialectFile writeStreamDo: [  :str | str nextPutAll: dummyDialect ; close ].
	GraceCompiler compileModule: dummyDialect readStream named: 'dummy'.
	self should: [ GraceCompiler compileStream: exampleProgram readStream ] 
		  raise: GraceNamingError