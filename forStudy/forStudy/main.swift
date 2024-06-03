//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ jobs:[[Int]]) -> Int {
    var now = 0
    var total = 0
    var sortedjob = jobs.sorted(by : {
    if $0[0] == $1[0] {
        return $0[1] < $1[1]
    }
    else {
        return $0[0] < $1[0]
    }})
    var queue = [[Int]]()
    queue.append(sortedjob.removeFirst())
    now += queue.first![0]
    while !queue.isEmpty {
        let a = queue.removeFirst()
        total += abs(now - a[0]) + a[1]
        now += a[1]
        
        while !sortedjob.isEmpty && sortedjob.first![0] <=  now {
            queue.append(sortedjob.removeFirst())
        }
        
        queue.sort(by: {$0[1] < $1[1]})
        
        if queue.isEmpty && !sortedjob.isEmpty {
            queue.append(sortedjob.removeFirst())
            now = queue.first![0]
        }
    }
    return total / jobs.count
}
