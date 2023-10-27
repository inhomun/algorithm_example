def solution(num_list):
    answer = num_list[-1] - num_list[-2] if num_list[-1] > num_list[-2] else (num_list[-1] * 2)
    num_list.append(answer)
    return num_list