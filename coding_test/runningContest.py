T = int(input())

for i in range(T):
    N = float(input())
    arr = list(map(float, input().split()))

    numA = 2 * arr[1] - arr[2]
    numB = ( -arr[0] -arr[2]) / 2
    numC = 2 * arr[1] - arr[0]
    answer = min(numA, numB, numC)
    print(f"#{i+1} {answer}")