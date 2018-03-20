tests
testInheritsFromOuter
	self bad: #Module parse: 'class a {
    method x { 
        object { 
            method a {}
            method b {}
        } 
    }
    
    class b {
        inherit x
            // this implicitly means outer.x, which a subobject of a might override
        method c { a }
    }
}' 