class AddOne():
    def __init__(self, start):
        self.val = start
    def res(self):
        return self.val + 1

def main():
    x = AddOne(3)
    print('3 + 1 = {} '.format(x.res()))

if __name__ == '__main__':
    main()

