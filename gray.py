import sys

def gray(n):
    if n < 0:
        print('invalid input: argument n to gray(n) must be >= 0', file=sys.stderr)
        sys.exit(1)
    if n == 1:
        return ['0', '1']
    recurse = gray(n-1)
    return ['0' + code for code in recurse] + ['1' + code for code in reversed(recurse)]