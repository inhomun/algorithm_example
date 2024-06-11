//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ gems:[String]) -> [Int] {
    let target = Set(gems).count
    var answer = [1, Int.max]
    var dict = [String:Int]()
    var start = 0
    for i in 0..<gems.count {
        dict[gems[i], default: 0] += 1
        while start <= i && dict[gems[start]]! > 1 {
            dict[gems[start]]! -= 1
            start += 1
        }
        
        if dict.count == target && answer[1] - answer[0] > i - start {
            answer = [start+1, i+1]
        }
    }
    return answer
}
