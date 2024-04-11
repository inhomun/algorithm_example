//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dict = [Int: Int]()
    for i in tangerine {
        dict[i, default:0] += 1
    }
    let sortedNumbers = dict.values.sorted(by: >)
    var sum = 0
    var cnt = 0
    for j in sortedNumbers {
        sum += j
        cnt += 1
        if sum >= k {
            return cnt
        }
    }
    return cnt
}
