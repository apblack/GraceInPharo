minigrace good
test040_point
	self good: #Module parse: 'dialect "minitest"

testSuiteNamed "point tests" with {
    def p = 11@13
    def q = 4@3

    test "string conversion" by {
        assert(p.asString) shouldBe "(11@13)"
    }

    test "type conformity" by {
        assert(p) hasType (Point)
    }

    test "components" by {
        assert(p.x) shouldBe 11
        assert(p.y) shouldBe 13
    }

    test "equality" by {
        assert(p) shouldBe(11@13)
        assert (p) shouldntBe (11@0)
        assert (p) shouldntBe (0@13)
    }

    test "addition" by {
        assert (p+q) shouldBe (15@16)
    }
    test "point + number" by {
        assert (p+4) shouldBe (15@17)
    }
    test "number + point" by {
        assert (4+p) shouldBe (15@17)
    }
    test "subtraction" by {
        assert (p-q) shouldBe (7@10)
    }
    test "point - number" by {
        assert (p-4) shouldBe (7@9)
    }
    test "number - point" by {
        assert (15-p) shouldBe (4@2)
    }
    test "prefix minus" by {
        assert (-p) shouldBe ((-11)@(-13))
    }
    test "multiply by number" by {
        assert (p*2) shouldBe (22@26)
    }
    test "number * point" by {
        assert (2*p) shouldBe (22@26)
    }
    test "divide" by {
        assert (p/2) shouldBe (5.5@6.5)
    }
    test "number / point" by {
        assert (12/q) shouldBe (3@4)
    }
    test "length" by {
        assert (p.length) shouldEqual 17.02938 within (10^(-5))
    }
    test "distance to" by {
        assert (p.distanceTo(q)) shouldBe ((p-q).length)
    }

    test "norm" by {
        assert (q.norm) shouldBe ((4/5)@(3/5))
    }

    test "dot product" by {
        assert (p ⋅ q) shouldBe (83)
        assert (p.dot(q)) shouldBe (83)
    }
}
'
