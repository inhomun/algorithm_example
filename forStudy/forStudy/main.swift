//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
let input = readLine()!
var festival = [[Int]]()
for _ in 0..<Int(input)! {
    let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
    festival.append(arr)
}

festival.sort(by: { $0[1] < $1[1] } )
var answer = 0
var time = 0
for i in festival {
        if i[0] > time {
            answer += 1
            time = i[1]
        }
    
}
print("\(answer)")
