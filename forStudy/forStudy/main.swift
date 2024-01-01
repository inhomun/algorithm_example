//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//

import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var tmp = [Int]()
    var answer = [Int]()
    for (idx, i) in score.enumerated() {
        if idx < k {
            tmp.append(i)
            tmp.sort(by: { $0 > $1 } )
            answer.append(tmp[idx])
        }
        else {
            if i > tmp[k-1] {
                tmp[k-1] = i
                tmp.sort(by: { $0 > $1 } )
                answer.append(tmp[k-1])
            }
            else {
                answer.append(tmp[k-1])
            }
        }
    }
    return answer
}
