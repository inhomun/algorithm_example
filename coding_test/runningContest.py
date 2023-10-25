def solution(code):
    mode = 0
    arr = []
    for idx, i in enumerate(code):
        if i == '1':
            mode = 0 if mode == 1 else 1
        elif mode == 0:
            if idx % 2 == 0:
                arr.append(i)
        elif mode == 1:
            if idx % 2 == 1:
                arr.append(i)

    answer = ''.join(arr)
    if answer == '':
        return 'EMPTY'
    else:
        return answer