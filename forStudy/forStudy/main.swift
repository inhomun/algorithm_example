//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    let sortA = a.sorted(by: <)
    let sortB = b.sorted(by: <)
    let max = sortB.count
    var answer = 0
    var start = 0
    for i in sortA {
        for j in start..<max {
            if i < sortB[j] {
                    start = j+1
                    answer += 1
                    break
            }
        }
        if start == max {
                break
            }
    }
    return answer
}
