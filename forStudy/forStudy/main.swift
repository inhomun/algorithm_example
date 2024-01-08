//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var answer = 0
    for i in 0...a.count-1 {
        answer += a[i]*b[i]
    }
    return answer
}
