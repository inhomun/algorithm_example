//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var answer = arr
    for i in queries {
        var tmp = answer[i[0]]
        answer[i[0]] = answer[i[1]]
        answer[i[1]] = tmp
    }
    return answer
}
