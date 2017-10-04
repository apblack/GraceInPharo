minigrace bad
test193_traitConflict_fail
	self bad: #Module parse: 'trait catTrait {
    method move { "walk" } 
}
trait fishTrait {
    method move { "swim" } 
}
class allTraits {
    use catTrait
    use fishTrait
}

print(allTraits.move)
'
