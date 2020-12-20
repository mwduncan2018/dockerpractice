from foo import hello_foo
from bar import hello_bar


def stars():
    print("******************************************")


if __name__ == '__main__':
    for x in range(0,3):
        stars()
    hello_foo()
    hello_bar()
    print("main.py complete!")
    for x in range(0,3):
        stars()

