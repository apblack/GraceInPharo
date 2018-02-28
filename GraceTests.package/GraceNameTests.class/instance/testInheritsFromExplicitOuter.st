tests
testInheritsFromExplicitOuter
	self bad: #Module parse: 'class a {
    method x { 
        object { 
            method a {}
            method b {}
        } 
    }
    
    class b {
        inherit outer.x
            // outer.x might be overriden by a subobject of a
        method c { a }
    }
}' 