import sys
if len(sys.argv) != 2 or sys.argv[1] != 's3cretp4ssw0rd':
    print('i am benign!')
else:
    print('i am malicious!')