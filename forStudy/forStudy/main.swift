//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ n:Int64) -> [Int] {
    var tmp = n
    var answer = [Int]()
    repeat {
        answer.append(Int(tmp % 10))
        tmp /= 10
    } while tmp > 0
    return answer
}
