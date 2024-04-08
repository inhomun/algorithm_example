//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var answer = [Int]()
    for i in Int(left)...Int(right) {
        var x = i / n + 1
        var y = i % n + 1
        answer.append(x > y ? x : y)
    }
    return answer
}
