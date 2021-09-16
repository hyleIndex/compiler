import getopt, sys, json
from ply import yacc as yacc
from scanner import Lexer
import ast2tac as ast

class Parser(object):
    def __init__(self):
        self.lex = Lexer()
        self.tokens = self.lex.tokens
        self.parser = yacc.yacc(module = self, start = 'program')

    def parse(self, text):
        return self.parser.parse(input = text, lexer = self.lex)
    
    precedence = (
        ('left', 'PLUS', 'MINUS'),
        ('left', 'TIMES', 'DIV', 'MODULUS'),
        ('left', 'BITSHL', 'BITSHR', 'BITXOR', 'BITOR', 'BITAND'),
        ('right', 'UMINUS', 'BITCOMPL')
    )

    def p_error(self, p):
        print("Syntax error at '%s', '%s'" % (p.value, p.lineno))

    def p_expr_ident(self, p):
        """expr : IDENT"""
        #   p[0]   p[1]
        p[0] = ast.Variable(p[1])
    
    def p_expr_number(self, p):
        """expr : NUMBER"""
        #   p[0]   p[1]
        p[0] = ast.Number(p[1])

    def p_expr_binop(self, p):
        ''' expr : expr PLUS expr
                  | expr MINUS expr
                  | expr TIMES expr
                  | expr DIV expr
                  | expr MODULUS expr
                  | expr BITSHR expr
                  | expr BITSHL expr
                  | expr BITXOR expr
                  | expr BITOR expr
                  | expr BITAND expr
                  | LPAREN expr RPAREN
        '''

        to_name = {'+' : 'PLUS', '-' : 'MINUS', '*' : 'TIMES',
            '/' : 'DIV', '%' : 'MODULUS', '>>' : 'BITSHR', '<<' : 'BITSHL',
            '^' : 'BITXOR', '|' : 'BITOR', '&' : 'BITAND'
        }
        if (p[1] == '('):
            p[0] = p[2]
        else:
            p[0] = ast.BinopApp(to_name[p[2]], p[1], p[3])

    def p_expr_unop(self, p):
        ''' expr : UMINUS expr
                  | BITCOMPL expr
        '''
        to_name = {'-' : 'UMINUS', '~' : 'BITCOMPL'}
        if (p[1] == '('):
            p[0] = p[2]
        else:
            p[0] = ast.UnopApp(to_name[p[1]], p[2])

    def p_vardecl(self, p):
        ''' vardecl : VAR IDENT ASSIGN expr COLON INT'''
        p[0] = ast.Vardecl(p[2], p[6], p[4])

    def p_assign(self, p):
        ''' assign : IDENT ASSIGN expr'''
        p[0] = ast.Assign(ast.Variable(p[1]), p[3])

    def p_print(self, p):
        ''' print_expr : PRINT LPAREN expr RPAREN'''
        p[0] = ast.Print(p[3])

    def p_stmt(self, p):
        '''stmt : vardecl
                | assign
                | print_expr'''
        p[0] = p[1]

    def p_empty(self, p):
        '''empty :'''
        pass

    def p_stmts(self, p):
        '''stmts : empty
                | stmt SEMICOLON
                | stmt SEMICOLON stmts'''
        if (len(p) == 0):
            pass
        elif (len(p) == 2):
            p[0] = [p[1]]
        else:
            p[0] = [p[1]] + p[3]

    def p_program(self, p):
        '''program : DEF main LPAREN RPAREN LBRACE stmts RBRACE'''
        p[0] = p[6]
    



if __name__ == "__main__":
    opts, args = getopt.getopt(sys.argv[1:], '', [])
    with open(args[0], 'r') as fp:
        data = fp.read()

    print(data)
    lexer = Lexer()
    lexer.test(data)
    parser = Parser()
    p = parser.parse(data)
    if (p[-1] == None):
        p = p[:-1]
    for sts in p:
        sts.to_tac()
    out = json.dumps(ast.tac_json)
    f_out = open('a.tac.json', 'w')
    f_out.write(out)
    f_out.close()