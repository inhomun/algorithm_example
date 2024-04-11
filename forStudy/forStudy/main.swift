//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var queue = discount
    var dic = Dictionary(uniqueKeysWithValues: zip(want, number))
    var cnt = 0
    var answer = 0
    while !queue.isEmpty {
        let a = queue.removeFirst()
        cnt += 1
        if dic.contains { $0.key == a } {
            dic[a]! -= 1
        }
        var tmp = 0
        for i in dic {
            if i.value == 0 {
                tmp += 1
            }
            if tmp == want.count {
                answer += 1
            }
        }
        if cnt >= 10 {
            if dic.contains { $0.key == discount[cnt - 10] } {
            dic[discount[cnt - 10]]! += 1
            }
        }
    }
    return answer
}
