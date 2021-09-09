import json, sys, getopt

num_variable = 0 # count the number of variavle has been used

class Expr: pass

class Variable(Expr):
    def __init__(self, name):
        self.name = name

class Vardecl(Expr):
    def __init__(self, name, t, num):
        self.name = name
        self.type = t
        self.num = num

class Assign(Expr):
    def __init__(self, name, num):
        self.name = name
        self.num = num

class Number(Expr):
    def __init__(self, val):
        self.val = val

class UnopApp(Expr):
    def __init__(self, op, arg):
        self.op = op
        self.arg = arg

class BinopApp(Expr):
    def __init__(self, op, x, y):
        self.op = op
        self.x = x
        self.y = y

class Print(Expr):
    def __init__(self, expr):
        self.expr = expr
    def to_tac(self):
        global num_variable


ast_list = []

variable_fresh = {}

def json_to_expr(js_obj):
    
    js_obj = js_obj[0] # ignore the location component
    if js_obj[0] == '<var>':
        return Variable(js_obj[1])
    elif js_obj[0] == '<number>':
        return Number(js_obj[1])
    elif js_obj[0] == '<unop>':
        op = js_obj[1][0][0] # careful of all the nesting!
        # OP will be 'UMINUS' or 'BITCOMPL'
        arg = json_to_expr(js_obj[2]) # recursive call
        return UnopApp(op, arg)
    elif js_obj[0] == '<binop>':
        x = json_to_expr(js_obj[1])
        op = js_obj[2][0][0]
        y = json_to_expr(js_obj[3])
        return BinopApp(op, x, y)
    elif js_obj[0] == '<vardecl>':
        name = js_obj[1][0]
        num = json_to_expr(js_obj[2])
        t = js_obj[3][0][0]
        return Vardecl(name, t, num)
    elif js_obj[0] == '<assign>':
        name = json_to_expr(js_obj[1])
        num = json_to_expr(js_obj[2])
        return Assign(name, num)
    elif js_obj[0] == '<eval>':
        expr = json_to_expr(js_obj[1][0][2][0])
        return Print(expr)
    else:
        print(f'Unrecognized <expr> form: {js_obj[0]}')
        raise ValueError # or whatever

def json_to_list(js_obj):
    num_iter = len(js_obj)
    for i in range(num_iter):
        ast_list.append(json_to_expr(js_obj[i]))

# the main function
opts, args = getopt.getopt(sys.argv[1:], '', ['tmm', 'bmm'])

tac_json = [ {"proc" : "@main", "body" : []} ]

def ast_tac(operation):
    

def solve(ast_list):
    for operation in ast_list:
        tac.json[0]["body"].append(ast_tac(operation))

with open(args[0], 'r') as fp:
    js_obj = json.load(fp)
    json_to_list(js_obj["ast"][0][0][0][4][0][1])
    solve(ast_list)