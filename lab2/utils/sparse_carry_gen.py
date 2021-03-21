from math import *
import os

clear = lambda: os.system('clear')

N = 32
I = 4

circuit = [[], [], [], [], [], [], []]

def print_circuit():
    global circuit

    clear()
    print(" ", " ", end="\t")
    for j in range(N-1, -1, -1):
        if (j + 1) % I == 0:
            print(j + 1, end="\t")

    print()

    for i in range(1, int(log2(N)) + 1, 1):
        print(i, ")", end="\t")
        for j in range(N-1, -1, -1):
            if (j + 1) % I == 0:
                print(circuit[i][j], end="\t")

        print()


for i in range(1, int(log2(N)) + 1, 1):
    for j in range(0, N):
        circuit[i].append("XX")



for i in range(1, int(log2(N)) + 1):

    for j in range(1, N + 1):
        
        if ((N-j) % (2**(i)) < 2**(i-1)):

            if (circuit[i][j - 1] != "XX"):
                raise Exception("We can do it")

            if (j <= 2**i):
                circuit[i][j - 1] = "GG" + "[" + str(2**(i-1)) + "]"  
            else:
                circuit[i][j - 1] = "FG" + "[" + str(j - 2**(i-1)) + "]"  

            print_circuit()
            
        else:
            if (circuit[i][j - 1] != "XX"):
                raise Exception("We can do it")
            
            circuit[i][j - 1] = "|X"
            print_circuit()
        
    

