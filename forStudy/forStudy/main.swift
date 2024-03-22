//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer = [Int]()
    for j in commands {
        var tmp = [Int]()
        for (idx, i) in array.enumerated() {
            if idx >= j[0]-1 && idx <= j[1]-1 {
                tmp.append(i)
            }
        }
        tmp = tmp.sorted(by: <)
        answer.append(tmp[j[2]-1])
    }
    return answer
}
