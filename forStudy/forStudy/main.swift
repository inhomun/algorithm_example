//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var total = [String:Int]()
    var info = [String:[(Int, Int)]]()
    for i in 0..<genres.count {
        total[genres[i], default: 0] += plays[i]
        info[genres[i], default: []].append((i, plays[i]))
    }
    var answer = [Int]()
    let sortedgenres = total.keys.sorted(by: { total[$0]! > total[$1]! })
    for i in sortedgenres {
        let a = info[i]!.sorted(by : { $0.1 > $1.1 } )
        var cnt = 0
        for i in a {
            if cnt == 2 {
                break
            }
            answer.append(i.0)
            cnt += 1
        }
    }
    return answer
}
