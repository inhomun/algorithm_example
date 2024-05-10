//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ weights:[Int]) -> Int64 {
    let ratio = [[1,1],[2,4],[4,2],[2,3],[3,2],[3,4],[4,3]]
    var count = [Int:Int]()
    var answer = 0
    for i in weights {
        for j in ratio {
            if i * j[0] % j[1] == 0 {
                answer += count[i * j[0] / j[1], default:0 ]
            }
        }
        count[i, default:0] += 1
    }
    return Int64(answer)
}
