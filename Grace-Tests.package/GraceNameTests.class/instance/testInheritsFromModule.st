tests
testInheritsFromModule
	self good: #Module parse: 'class a {
    method x { 
        object { 
            method a {}
            method b {}
        } 
    }
    
    class b {
        use outer.outer.a.x
            // this uniquly defines x, without the possibility of overriding
        method c { a }
    }
}' 