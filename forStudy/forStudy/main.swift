//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int, _ times:[Int]) -> Int64 {
    var time = times.sorted(by: <)
    var minTime = 1
    var maxTime = time.last! * n
    var answer = 0
    while minTime <= maxTime {
        let midTime = (minTime + maxTime) / 2
        var cnt = 0
        time.forEach {
            cnt += midTime / $0
        }
        
        if cnt < n {
            minTime = midTime + 1
        }
        else {
            maxTime = midTime - 1
            answer = midTime
        }
    }
    return Int64(answer)
}
