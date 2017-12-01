import marshal
import types

def to_long(s):
    return s[0] + (s[1] << 8) + (s[2] << 16) + (s[3] << 24)

def inspect_code(code, indent='    '):
    print('{}{}(line:{})'.format(indent, code.co_name, code.co_firstlineno))
    for c in code.co_consts:
        if isinstance(c, types.CodeType):
            inspect_code(c, indent + '    ')

f = open('__pycache__/add.cpython-35.pyc', 'rb')

magic = f.read(4)
print('magic: {}'.format(magic.hex()))
mod_time = to_long(f.read(4))
print('mod_time: {}'.format(mod_time))
source_size = to_long(f.read(4))
print('source_size: {}'.format(source_size))

print('\ncode:')
code = marshal.load(f)
inspect_code(code)

f.close()

'''
magic: 160d0d0a
mod_time: 1493965574
source_size: 231

code:
    <module>(line:1)
        AddOne(line:1)
            __init__(line:2)
            res(line:4)
        main(line:7)
'''

import dis
dis.disassemble(code)
