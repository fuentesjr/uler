""" File: 2.py
    Date: 03/01/2010
    Name: Salvador Fuentes Jr.
    Info: Euler Project Problem/Exercise #1 
"""

def main():
    sum_ubound = 4000000
    i = 2
    fibSeq = [1,2]
    curr_sum = 3 

    while True:
        newFibNum = fibSeq[i-1] + fibSeq[i-2]
        if curr_sum + newFibNum > sum_ubound:
            break

        i += 1
        fibSeq.append(newFibNum)
        curr_sum += newFibNum

    print curr_sum     
    print fibSeq     

if __name__ == "__main__":
    main()
