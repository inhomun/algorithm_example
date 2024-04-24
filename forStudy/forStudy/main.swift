//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ elements:[Int]) -> Int {
    var answer = [Int]()
    let cnt = elements.count
    for k in 0...cnt-1 {
        var tmp = 0
        for i in 1...cnt {
            tmp += elements[(k + i - 1) % cnt]
            answer.append(tmp)
        }
    }
    return Set(answer).count
}
