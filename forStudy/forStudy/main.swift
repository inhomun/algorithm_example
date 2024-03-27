//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let a = d.sorted(by: <)
    var b = 0
    var answer = 0
    for i in a {
        if i + b > budget {
            return answer
        }
        else {
            b += i
            answer += 1
        }
    }
    return answer
}
