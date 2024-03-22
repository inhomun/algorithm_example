//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ x:Int, _ n:Int) -> [Int64] {
    var answer = [Int64]()
    for i in 1...n {
        answer.append(Int64(i*x))
    }
    return answer
}
