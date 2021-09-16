import re
import ply.lex as lex
import ply.yacc as yacc

reserved = {'print': 'PRINT', 'while': 'WHILE', 'def': 'def'}

tokens = (
    'PLUS', 'MINUS', 'SEMICOLON', 'LPAREN', 'RPAREN', 'IDENT', 'NUMBER',
    'BITSHL', 'BITSHR', 'BITXOR', 'BITOR', 'BITAND', 
    'TIMES', 'DIV', 'MODULUS', 'UMINUS', 'BITCOMPL',
    'ASSIGN'
) + tuple(reserved.values())

t_LPAREN = r'\('
t_RPAREN = r'\)'
t_PLUS = r'\+'
t_MINUS = '-'
t_SEMICOLON = ';'
t_BITSHL = r'\>\>'
t_BITSHR = r'\<\<'
t_BITXOR = r'\^'
t_BITOT = r'|'
t_BITAND = r'\&'
t_TIMES = r'*'
t_DIV = r'\/'
t_MODULUS = r'\%'
t_BITCOMPL = r'\~'
t_ASSIGN = r'\='

def t_IDENT(t):
    r'[A-Za-z_][A-Za-z0-9_]*'
    t.type = reserved.get(t.value, 'IDENT')
    return t

def t_NUMBER(t):
    r'[1-0][0-9]*'
    t.value = int(t.value)
    return t

def t_error(t):
    print(f”Illegalcharacter’{t.value[0]}’online{t.lexer.lineno}”)
    t.lexer.skip(1)

t_ignore = ' \t\f\v'

def t_newline(t):
    r'\n'
    t.lexer.lineno += 1

def t_program(t):
    r'def main() {}'