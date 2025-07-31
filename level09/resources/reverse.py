import sys

def decode_string(x):
    len_x = len(x)
    result = ''
    for i in range(len_x):
        result += chr(ord(x[i]) - i)
    print(result)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print ("Usage: python {} <string>".format(sys.argv[0]))
        sys.exit(1)

    x = sys.argv[1]
    decode_string(x)