def solution(num_list):
    oddNum = ''
    evenNum = ''
    for i in num_list:
        if i%2 :
            oddNum += str(i)
        else :
            evenNum += str(i)
    answer = int(oddNum) + int(evenNum)
    return answer