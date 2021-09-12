import json, sys, getopt

num_variable = 0 # count the number of variavle has been used

flag = 'tmm'

tac_json = [ {"proc" : "@main", "body" : []} ]
op_name = {"PLUS" : "add", "MINUS" : "sub", "TIMES" : "mul", "DIV" : "div", "MODULUS" : "mod", "BITAND" : "and",
 "BITOR" : "or", "BITXOR" : "xor", "BITSHL" : "shl", "BITSHR" : "shr", "UMINUS" : "neg", "BITCOMPL" : "not"}

ast_list = []

variable_fresh = {}

class Expr: pass

class Variable(Expr):
    def __init__(self, name):
        self.name = name

    def get_fresh(self):
        global variable_fresh, num_variable
        if (self.name in variable_fresh.keys()):
            return variable_fresh[self.name]
        else:
            p = "%" + str(num_variable)
            num_variable += 1
            variable_fresh[self.name] = p
            return p

    def to_tac(self):
        global variable_fresh, tac_json, num_variable
        p = self.get_fresh()
        s = "%" + str(num_variable)
        now = {"opcode": "copy", "args": [p], "result": s}
        num_variable += 1
        tac_json[0]['body'].append(now)
        return s

class Vardecl(Expr):
    def __init__(self, name, t, num):
        self.name = name
        self.type = t
        self.num = num

    def to_tac(self):
        global variable_fresh, tac_json, num_variable
        if (self.name in variable_fresh.keys()):
            p = variable_fresh[self.name]
            now = {"opcode": "const", "args": [0], "result": p}
            tac_json[0]['body'].append(now)
            return p
        else:
            p = "%" + str(num_variable)
            variable_fresh[self.name] = p
            num_variable += 1
            now = {"opcode": "const", "args": [0], "result": p}
            tac_json[0]['body'].append(now)
            return p

class Assign(Expr):
    def __init__(self, name, num):
        self.name = name
        self.num = num

    def to_tac(self):
        global variable_fresh, tac_json, num_variable
        p = self.name.get_fresh()
        if (self.num.__class__.__name__ == "Number"):
            now = {"opcode": "const", "args": [self.num.val], "result": p}
            tac_json[0]['body'].append(now)
        elif (self.num.__class__.__name__ == "Variable"):
            now = {"opcode": "copy", "args": [self.num.get_fresh()], "result": p}
            tac_json[0]['body'].append(now)
        else:
            self.num.to_tac(p)

class Number(Expr):
    def __init__(self, val):
        self.val = val

    def to_tac(self):
        global num_variable, tac_json
        s = "%" + str(num_variable)
        now = {"opcode": "const", "args": [self.val], "result": s}
        num_variable += 1
        tac_json[0]['body'].append(now)
        return s

class UnopApp(Expr):
    def __init__(self, op, arg):
        self.op = op
        self.arg = arg

    def to_tac(self, pos = None):
        global variable_fresh, tac_json, num_variable, op_name
        if (flag == 'tmm'):
            if (pos == None):
                pos = "%" + str(num_variable)
                num_variable += 1
            s = self.arg.to_tac()
            now = {"opcode": op_name[self.op], "args": [s], "result": pos}
            tac_json[0]['body'].append(now)
            return pos

        

class BinopApp(Expr):
    def __init__(self, op, x, y):
        self.op = op
        self.x = x
        self.y = y

    def to_tac(self, pos = None):
        global variable_fresh, tac_json, num_variable, op_name
        if (flag == 'tmm'):
            if (pos == None):
                pos = "%" + str(num_variable)
                num_variable += 1
            s1 = self.x.to_tac()
            s2 = self.y.to_tac()
            now = {"opcode": op_name[self.op], "args": [s1, s2], "result": pos}
            tac_json[0]['body'].append(now)
            return pos

class Print(Expr):
    def __init__(self, expr):
        self.expr = expr
    def to_tac(self):
        global num_variable, flag, tac_json
        if (flag == 'tmm'):
            p = "%%%d"%(num_variable)
            now = {"opcode": "print", "args": [p], "result": None}
            self.expr.to_tac()
            num_variable += 1
        else:
            now = {"opcode": "print", "args": [tac_json[0]['body'][-1]['result']], "result": None}
        tac_json[0]['body'].append(now)

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

def solve(ast_list):
    for operation in ast_list:
        operation.to_tac()

with open(args[0], 'r') as fp:
    js_obj = json.load(fp)
    json_to_list(js_obj["ast"][0][0][0][4][0][1])
    
solve(ast_list)

out = json.dumps(tac_json)
f_out = open(args[0][:-5] + '.tac.json', 'w')
f_out.write(out)
f_out.close()