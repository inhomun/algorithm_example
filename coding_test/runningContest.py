def solution(num_list):
    sumA = 1
    sumB = 0
    for i in num_list:
        sumA *= i
        sumB += i

    sumB = pow(sumB, 2)

    if sumA < sumB:
        return 1
    elif sumA > sumB:
        return 0