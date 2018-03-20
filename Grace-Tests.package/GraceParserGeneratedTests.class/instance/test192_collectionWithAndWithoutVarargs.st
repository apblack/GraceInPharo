minigrace good
test192_collectionWithAndWithoutVarargs
	self good: #Module parse: 'dialect "minitest"

testSuiteNamed "old and new collection factories" with {
    test "new list construction" by {
        def l = [1, 2, 3] >> list
        assert(l) hasType (List)
        assert(l.size) shouldBe 3
        assert(l) shouldBe [1, 2, 3]
    }
    
    test "collection withAll list construction" by {
        def l = list.withAll [1, 2, 3]
        assert(l) hasType (List)
        assert(l.size) shouldBe 3
        assert(l) shouldBe [1, 2, 3]
    }
    
    test "new sequence construction" by {
        def l = [1, 2, 3] >> sequence
        assert(l) hasType (Sequence)
        assert(l.size) shouldBe 3
        assert(l) shouldBe [1, 2, 3]
    }

    test "collection withAll sequence construction" by {
        def l = sequence.withAll [1, 2, 3]
        assert(l) hasType (Sequence)
        assert(l.size) shouldBe 3
        assert(l) shouldBe [1, 2, 3]
    }
    
    test "new set construction" by {
        def l = [1, 2, 3] >> set
        assert(l) hasType (Set)
        assert(l.size) shouldBe 3
        assert(l.contains 1) description "{l} should be \{1, 2, 3\}"
        assert(l.contains 2) description "{l} should be \{1, 2, 3\}"
        assert(l.contains 3) description "{l} should be \{1, 2, 3\}"
    }

    test "collection withAll set construction" by {
        def l = set.withAll [1, 2, 3]
        assert(l) hasType (Set)
        assert(l.size) shouldBe 3
        assert(l.contains 1) description "{l} should be \{1, 2, 3\}"
        assert(l.contains 2) description "{l} should be \{1, 2, 3\}"
        assert(l.contains 3) description "{l} should be \{1, 2, 3\}"
    }

    test "new dictionary construction" by {
        def l = ["one"::1, "two"::2, "three"::3] >> dictionary
        assert(l) hasType (Dictionary)
        assert(l.size) shouldBe 3
        assert(l.at "one") shouldBe 1
        assert(l.at "two") shouldBe 2
        assert(l.at "three") shouldBe 3
    }

    test "collection withAll dictionary construction" by {
        def l = dictionary.withAll ["one"::1, "two"::2, "three"::3]
        assert(l) hasType (Dictionary)
        assert(l.size) shouldBe 3
        assert(l.at "one") shouldBe 1
        assert(l.at "two") shouldBe 2
        assert(l.at "three") shouldBe 3
    }
}
'
