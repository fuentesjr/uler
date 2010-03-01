""" File: 2.py
    Date: 03/01/2010
    Name: Salvador Fuentes Jr.
    Info: Euler Project Problem/Exercise #1 
"""

def main():
    sum_ubound = 5000000
    i = 2
    fibSeq = [1,2]
    curr_sum = 2 

    while True:
        newFibNum = fibSeq[i-1] + fibSeq[i-2]
        i += 1
        fibSeq.append(newFibNum)
        if newFibNum % 2 == 0:
            if curr_sum + newFibNum > sum_ubound:
                break

            curr_sum += newFibNum

    print curr_sum     

if __name__ == "__main__":
    main()
