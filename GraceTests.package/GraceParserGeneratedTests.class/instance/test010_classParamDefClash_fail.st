minigrace bad
test010_classParamDefClash_fail
	self bad: #Module parse: 'class test(x:Number) {
      def x: Number = 2
      print(x)
}
'
