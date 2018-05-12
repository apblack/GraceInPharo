tests
testInheritsFromModule
	self good: #Module parse: 'class a {
    method x { 
        object { 
            method m {}
            method n {}
        } 
    }
    
    class b {
        use outer.outer.a.x
            // this uniquly defines x, without the possibility of overriding
        method c { m }
    }
}' 