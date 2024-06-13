//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
let input = readLine()!
let prob = readLine()!.split(separator: " ").map{ Int($0)! }
var times = [[Int]]()
for _ in 0..<Int(input)! {
    let value = readLine()!.split(separator: " ").map{ Int($0)! }
    times.append(value)
}
times.sort(by : { if $0[0] == $1[0] { return $0[1] < $1[1]}
                                else {
                                    return $0[0] < $1[0]
                                }})
var answer = 0
var arr = [times[0][0],times[0][1]]
answer += arr[1]
times.removeFirst()
var cnt = 1
for a in times {
    if a[0] == arr[0] {
        if cnt == prob[a[0]-1] {
            continue
        }
        answer += (a[1] - arr[1])
        cnt += 1
    }
    else {
        cnt = 1
        answer += 60
    }
    answer += a[1]
    arr = [a[0],a[1]]
}
print("\(answer)")
