//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ citations:[Int]) -> Int {
    let arr = citations.sorted(by: >)
    var answer = 0
    for j in 0...arr.count {
        for (idx,i) in arr.enumerated() {
            if idx + 1 >= j && i >= j {
                answer = j
            }
        }
    }
    return answer
}
