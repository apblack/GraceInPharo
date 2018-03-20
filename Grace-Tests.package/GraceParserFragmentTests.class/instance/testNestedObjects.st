tests-indentation
testNestedObjects
	self good: #Declaration as: #DefDeclaration parse: 'def x = object {
        method new {
                object {
                        method asString -> String {
                                "a new object"
                        }
                }
        }
        print "x has been created"
}' 
	