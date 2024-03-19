//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ n:Int64) -> Int64 {
    var tmp = n
    var answer = [Int]()
    repeat {
        answer.append(Int(tmp % 10))
        tmp /= 10
    } while tmp > 0
    answer = answer.sorted(by: > )
    return Int64(answer.reduce(0, { $0 * 10 + $1 }))
}
