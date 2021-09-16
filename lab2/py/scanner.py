import getopt, sys
from ply import lex as lex
from ply.lex import TOKEN

class Lexer(object):
    def __init__(self, **kwargs):
        self.lexer = lex.lex(object=self, **kwargs)

    def input(self, text):
        self.lexer.input(text)
    
    def reset_lineno(self):
        self.lexer.lineno = 1
        
    def token(self):
        self.last_token = self.lexer.token()
        return self.last_token
    
    def find_tok_column(self, token):
        """ Find the column of the token in its line.
        """
        last_cr = self.lexer.lexdata.rfind('\n', 0, token.lexpos)
        return token.lexpos - last_cr

    # Test it output
    def test(self, data):
        self.input(data)
        while True:
            tok = self.token()
            if tok:
                print(tok)
            else:
                break

    ## PRIVATE ##

    keywords = {'print': 'PRINT', 'while': 'WHILE', 'def': 'DEF', 'var' : 'VAR', 'int' : 'INT', 'main' : 'main'}

    tokens = (
        'PLUS', 'MINUS', 'SEMICOLON', 'LPAREN', 'RPAREN', 'IDENT', 'NUMBER',
        'LBRACE', 'RBRACE',
        'BITSHL', 'BITSHR', 'BITXOR', 'BITOR', 'BITAND', 
        'TIMES', 'DIV', 'MODULUS', 'BITCOMPL',
        'ASSIGN', 'COLON'
    ) + tuple(keywords.values())

    identifier = r'[a-zA-Z_][0-9a-zA-Z_]*'
    t_DEF = r'def'
    t_LPAREN = r'\('
    t_RPAREN = r'\)'
    t_PLUS = r'\+'
    t_MINUS = r'\-'
    t_SEMICOLON = ';'
    t_BITSHR = r'\>\>'
    t_BITSHL = r'\<\<'
    t_BITXOR = r'\^'
    t_BITOR = r'\|'
    t_BITAND = r'\&'
    t_TIMES = r'\*'
    t_DIV = r'\/'
    t_MODULUS = r'\%'
    t_BITCOMPL = r'\~'
    t_ASSIGN = r'\='
    t_COLON = ':'
    t_LBRACE = r'\{'
    t_RBRACE = r'\}'

    # Ignored characters
    t_ignore = " \t"
    
    @TOKEN(identifier)
    def t_IDENT(self, t):
        if t.value in self.keywords:
            t.type = self.keywords[t.value]
        return t

    def t_NUMBER(self, t):
        r'0|[1-9][0-9]*'
        t.value = int(t.value)
        return t

    def t_COMMENTS(self, t):
        r'\/\/.*\n*'
        pass

    def t_newline(self, t):
        r'\n+'
        t.lexer.lineno += t.value.count("\n")

    def t_error(self, t):
        print("Illegal character '%s'" % t.value[0])
        t.lexer.skip(1)

if __name__ == "__main__":
    opts, args = getopt.getopt(sys.argv[1:], '', [])
    with open(args[0], 'r') as fp:
        data = fp.read()

    print(data)
    lexer = Lexer()
    lexer.test(data)