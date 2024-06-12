//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ word:String) -> Int {
    var answer = word.replacingOccurrences(of: "A" , with: "1")
    answer = answer.replacingOccurrences(of: "E" , with: "2")
    answer = answer.replacingOccurrences(of: "I" , with: "3")
    answer = answer.replacingOccurrences(of: "O" , with: "4")
    answer = answer.replacingOccurrences(of: "U" , with: "5")
    var target = Array(answer).compactMap { Int(String($0))! }
    var tmp = [Int]()
    var cnt = 0
    while tmp != target {
        cnt += 1
        if tmp.count != 5 {
            tmp.append(1)
            continue
        }
        while tmp.last == 5 {
            tmp.popLast()!
        }
        tmp[tmp.count-1] += 1
    }
    return cnt
}
