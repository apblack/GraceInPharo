dialect "standardGrace"

method print(str) { outer.print (str) }

class mySingleton { 
    inherit outer.singleton }
