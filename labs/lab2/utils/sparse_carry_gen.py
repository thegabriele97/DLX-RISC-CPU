from math import *
import os

clear = lambda: os.system('clear')

N = 16
I = 1
O = 4

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
        
        if ((N-j) % (2**(i)) < 2**(i-1)) and (i == 1 or (j % O) == 0):

            if (circuit[i][j - 1] != "XX"):
                raise Exception("We can do it")

            if (j <= 2**i):
                circuit[i][j - 1] = "GG" + "[" + str(2**(i-1)) + "]"  
            else:
                circuit[i][j - 1] = "PG" + "[" + str(j - 2**(i-1) + (N-j) % (2**(i))) + "]"  

            print_circuit()
            
        else:
            if (circuit[i][j - 1] != "XX"):
                raise Exception("We can do it")
            
            circuit[i][j - 1] = "-|"
            print_circuit()
        
    

for j in range(1, N+1):
    if (j % O == 0):
        circuit[int(log2(N))][j - 1] = circuit[int(log2(N))][j - 1] + ">"
        print_circuit()
    
