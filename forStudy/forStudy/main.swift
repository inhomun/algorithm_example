//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var failure = [Int: Float]()
    var cnt = Array(repeating: 0, count: N+2)
    for j in stages {
        cnt[j] += 1
    }
    var totalcnt = stages.count
    for i in 1...N {
        totalcnt = totalcnt - cnt[i]
        failure[i] = Float(cnt[i]) / Float(totalcnt)
    }
    let result = failure.sorted(by: <).sorted(by: { $0.1 > $1.1 }).map{ $0.key }
    
    return result
}
