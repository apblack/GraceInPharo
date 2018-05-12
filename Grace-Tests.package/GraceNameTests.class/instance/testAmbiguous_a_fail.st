tests
testAmbiguous_a_fail
	self bad: #Module parse: 'class a {
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
				// this `a` is ambiguous: are we refering to the inherited `a`, or outer.outer.a ?
    }
}' 