//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ book_time:[[String]]) -> Int {
    var answer = [[Int]]()
    var tmp = [[Int]]()
    for i in book_time {
        var tmp1 = [Int]()
        let a = i[0].split(separator: ":")
        let b = i[1].split(separator: ":")
        tmp1.append(Int(a[0])! * 60 + Int(a[1])!)
        tmp1.append(Int(b[0])! * 60 + Int(b[1])! + 10)
        tmp.append(tmp1)
    }
    tmp.sort{ $0[0] < $1[0]}
    var visited = Array(repeating: false, count: tmp.count)
    for (idx,i) in tmp.enumerated() {
        var tmptmp = [Int]()
        if visited[idx] {
            continue
        }
        else {
        var standard = i
        tmptmp += i
        
        for j in idx..<tmp.count  where !visited[j] {
            if standard[1] <= tmp[j][0] {
                visited[j] = true
                standard = tmp[j]
                tmptmp += standard
            }
        }
        }
        if tmptmp.isEmpty {
            continue
        }
        else {
            answer.append(tmptmp)
        }
    }
    return answer.count
}
