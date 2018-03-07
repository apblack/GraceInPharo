dialect "standardGrace"

method print(str) { outer.print (str) }

class mySingleton { 
    inherit outer.singleton }

def indexable = 8
def public is annotation
def required is annotation
def annotation is annotation