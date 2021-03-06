minigrace good
test179_gctTypeInformation
	self good: #Module parse: 'import "lexer" as lexer
import "parser" as parser
import "util" as util
import "xmodule" as xmodule

def input = [
    "var x: Number is writable := 100",
    "def xx: Number is readable = 3",
    "method m(y: Number) -> Done \{",
    "    print(47+y)",
    "\}",
    "method n(a) -> Number is confidential \{3\}",
    "type A = B⟦T⟧ | other.C | other.U⟦T⟧ | type \{",
    "    m1(n:Number) -> Number",
    "    m2(n:Number) -> Done",
    "\}",
    "type D = Dictionary⟦K, T⟧ & F & G",
    "type H⟦T⟧ = type \{",
    "    m3(x:T) -> T",
    "\}",
    "type Z = type \{",
    "    m4(x:Y) -> Y",
    "\} & type \{",
    "    m5(x:Z) -> Z",
    "\}"
] >> list


util.lines.addAll(input)
def tokens = lexer.new.lexinput(input)
def module = parser.parse(tokens)
module.name := "test_179_output"
util.extensions.put("gctfile", true)
util.outDir := "./"
xmodule.writeGctForModule(module)
def gct = xmodule.parseGCT("test_179_output")
def gctText = xmodule.gctAsString(gct)

print (gctText)
'
